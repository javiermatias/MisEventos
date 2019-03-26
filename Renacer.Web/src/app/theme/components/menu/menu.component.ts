import { Component, OnInit, ViewEncapsulation, ElementRef, HostListener } from '@angular/core';
import { Router, ActivatedRoute , NavigationEnd } from '@angular/router';
import { MenuService } from './menu.service';
import { AppState } from "../../../app.state";
import { UserServices } from '../../../resources/users.service';
import { RolServices } from '../../../resources/rol.service';


@Component({
    selector: 'az-menu',
    encapsulation: ViewEncapsulation.None,
    templateUrl: './menu.component.html',
    styleUrls: ['./menu.component.scss'],
    providers: [ MenuService ]
})

export class MenuComponent implements OnInit {
    private roles = {
        administrador : 'Administrador del sistema',
        secretario: 'Secretario',
        encargadoEvento: 'Encargado de Evento',
        socio: 'Socio'    
    };
    public menuItems:Array<any>;
    public menuHeight:number;
    public isMenuCollapsed:boolean = false;
    public isMenuShouldCollapsed:boolean = false;
    public showHoverElem:boolean;
    public hoverElemHeight:number;
    public hoverElemTop:number;
    /**
     * guarda el rol con el que se logueó el usuario
     * @memberof MenuComponent
     */
    public rol;
    constructor(private _elementRef:ElementRef,
                private _router:Router,
                private _activatedRoute:ActivatedRoute,
                private _menuService:MenuService,
                private _state:AppState,
                private _userServices:UserServices,
                private _rolesService: RolServices) {

      let user =  this._userServices.getCurrent();
        // this.menuItems = _menuService.getMenuItems(user.rol);
        this._state.subscribe('menu.isCollapsed', (isCollapsed) => {
            this.isMenuCollapsed = isCollapsed;
        });

        this._router.events.subscribe(event => {
            if (event instanceof NavigationEnd) {
                let width = (window.innerWidth > 0) ? window.innerWidth : screen.width;
                if(width <= 768){
                    this._state.notifyDataChanged('menu.isCollapsed', true);
                }
                window.scrollTo(0, 0);
            }
        });

    }

    public ngOnInit():void {
        this.rol = this._rolesService.getCurrent();
        if (this._shouldMenuCollapse()) {
            this.menuCollapse();
        }
        this.updateSidebarHeight();
        this.cargarItems();
    }

    @HostListener('window:resize')
    public onWindowResize():void {
        var isMenuShouldCollapsed = this._shouldMenuCollapse();

        if (this.isMenuShouldCollapsed !== isMenuShouldCollapsed) {
            this.menuCollapseStateChange(isMenuShouldCollapsed);
        }
        this.isMenuShouldCollapsed = isMenuShouldCollapsed;
        this.updateSidebarHeight();
    }

    private _shouldMenuCollapse():boolean {
        return window.innerWidth <= 768;
    }

    public menuCollapse():void {
        this.menuCollapseStateChange(true);
    }

    public menuCollapseStateChange(isCollapsed:boolean):void {
        this.isMenuCollapsed = isCollapsed;
        this._state.notifyDataChanged('menu.isCollapsed', this.isMenuCollapsed);
    }

    public menuExpand():void {
        this.menuCollapseStateChange(false);
    }

    public updateSidebarHeight():void {
       this.menuHeight =  this._elementRef.nativeElement.children[0].clientHeight - 84;
    }

    public hoverItem($event):void {
        this.showHoverElem = true;
        this.hoverElemHeight = $event.currentTarget.clientHeight;
        this.hoverElemTop = $event.currentTarget.getBoundingClientRect().top - 60;
    }

    public collapseMenu($event, item):boolean{
        var link = jQuery($event.currentTarget);
        if (this.isMenuCollapsed) {
            this.isMenuCollapsed = false;
            this._state.notifyDataChanged('menu.isCollapsed', this.isMenuCollapsed);
            if (link.parent().hasClass('sidebar-item-expanded')) {
                return false;
            }
            else{
                link.parent().parent().find('li').removeClass('sidebar-item-expanded');
                link.parent().parent().find('li .sidebar-sublist').slideUp(250);
                link.parent().addClass('sidebar-item-expanded');
                setTimeout(function() {
                    link.next().css('display','block');
                },250);
                link.next().slideDown(250);
            }
        }
        else{
            if (link.parent().hasClass('sidebar-item-expanded')) {
                link.parent().removeClass('sidebar-item-expanded');
                link.next().slideUp(250);
            } else {
                link.parent().parent().find('li').removeClass('sidebar-item-expanded');
                link.parent().parent().find('li .sidebar-sublist').slideUp(250);
                link.parent().addClass('sidebar-item-expanded');
                link.next().slideDown(250);
            }
        }
        return false;
    }

    cargarItems() {
        this.menuItems = [
        {
            title: 'Inicio',
            routerLink: 'dashboard',
            icon: 'fa-home',
            selected: false,
            expanded: false,
            order: 0,
            rolesVisible: [this.roles.secretario]
          },
          {
            title: 'Calendario',
            icon: 'fa-calendar',
            routerLink: 'evento/calendario/',
            selected: false,
            expanded: false,
            order: 800,
            rolesVisible: [this.roles.secretario]
          },
          {
            title: 'Eventos',
            icon: 'fa-pencil-square-o',
            routerLink: 'evento/lista',
            selected: false,
            expanded: false,
            order: 800,
            rolesVisible: [this.roles.secretario, this.roles.encargadoEvento]
          },
          {
            title: 'Encargados de evento',
            routerLink: 'encargados/',
            icon: 'fa-users',
            selected: false,
            expanded: false,
            order: 600,
            rolesVisible: [this.roles.secretario]
          },
          {
            title: 'Socios',
            routerLink: 'socios/',
            icon: 'fa-users',
            selected: false,
            expanded: false,
            order: 500,
            rolesVisible: [this.roles.secretario, this.roles.encargadoEvento]
          },
          {
            title: 'Espacios',
            icon: 'fa-map-marker',
            selected: false,
            expanded: false,
            order: 800,
            routerLink: 'espacios/',
            rolesVisible: [this.roles.secretario]
          },
          {
            title: 'Asistencia',
            icon: 'fa-pencil-square-o',
            selected: false,
            expanded: false,
            order: 800,
            target: '_blank',
            routerLink: 'asistencia/',
            rolesVisible: [this.roles.encargadoEvento]
        }
        ,{
            title: 'Reportes',
            routerLink: 'reportes',
            icon: 'fa-file',
            selected: false,
            expanded: false,
            order: 300,
            rolesVisible: [this.roles.secretario],
            subMenu: [
            {
                title: 'Eventos',
                routerLink: 'reportes/eventos'
            },
            {
                title: 'Socios',
                routerLink: 'reportes/socios'
            },
            // {
            //   title: 'Encargados',
            //   routerLink: 'reportes/encargados'
            // },
            {
                title: 'Nube de Etiquetas',
                routerLink: 'reportes/tags'
            }
            ]
        },
        {
            title: 'Mis Datos',
            selected: false,
            routerLink: 'perfil',
            icon: 'fa-user',
            expanded: false,
            order: 800,
            rolesVisible: [this.roles.socio]
          },
          {
            title: 'Mis Inscripciones',
            selected: false,
            routerLink: 'inscripciones',
            icon: 'fa-pencil',
            expanded: false,
            order: 800,
            rolesVisible: [this.roles.socio]
          },
          {
            title: 'Mis Intereses',
            routerLink: 'intereses',
            icon: 'fa-users',
            selected: false,
            expanded: false,
            order: 500,
            rolesVisible: [this.roles.socio]
          },
          {
            title: 'Mis Pagos',
            routerLink: 'pagos',
            icon: 'fa-money',
            selected: false,
            expanded: false,
            order: 500,
            rolesVisible: [this.roles.socio]
          }
        ]
    }
}
