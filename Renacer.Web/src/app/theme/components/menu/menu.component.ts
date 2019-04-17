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
    private roles = { // TODO: buscar enum 
        administrador : 'Administrador del sistema',
        secretario: 'Secretario',
        encargadoEvento: 'Encargado de Evento',
        socio: 'Socio'
    };
    private todosRoles = [this.roles.administrador, this.roles.encargadoEvento, this.roles.secretario, this.roles.socio];
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
        },
        {
            title: 'Usuarios',
            icon: 'fa-users',
            selected: false,
            expanded: false,
            order: 800,
            target: '_blank',
            routerLink: 'usuario/',
            rolesVisible: [this.roles.administrador, this.roles.secretario]
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
        ];

        
        
        
        
        
        
        
        
        // Hasta acá llegan las opciones que agregamos nosotros. A partir de acá, son las que vienen con el template comprado


        const componentes_ui= [{
            title: 'Dashboard',
            routerLink: 'dashboard',
            icon: 'fa-home',
            selected: false,
            expanded: false,
            order: 0,
            rolesVisible: [...this.todosRoles]
            },
            {
            title: 'Charts',
            routerLink: 'charts',
            icon: 'fa-bar-chart',
            selected: false,
            expanded: false,
            order: 200,
            rolesVisible: [...this.todosRoles],
            subMenu: [
                {
                title: 'Ng2-Charts',
                routerLink: 'charts/ng2charts',
                },
            ]
            },
            {
            title: 'UI Features',
            routerLink: 'ui',
            icon: 'fa-laptop',
            selected: false,
            expanded: false,
            order: 300,
            rolesVisible: [...this.todosRoles],
            subMenu: [
                {
                title: 'Buttons',
                routerLink: 'ui/buttons'
                },
                {
                title: 'Cards',
                routerLink: 'ui/cards'
                },
                {
                title: 'Components',
                routerLink: 'ui/components'
                },
                {
                title: 'Icons',
                routerLink: 'ui/icons'
                },
                {
                title: 'Grid',
                routerLink: 'ui/grid'
                },
                {
                title: 'List Group',
                routerLink: 'ui/list-group'
                },
                {
                title: 'Media Objects',
                routerLink: 'ui/media-objects'
                },
                {
                title: 'Tabs & Accordions',
                routerLink: 'ui/tabs-accordions'
                },
                {
                title: 'Typography',
                routerLink: 'ui/typography'
                }
            ]
            },
            {
            title: 'Tools',
            routerLink: 'tools',
            icon: 'fa-wrench',
            selected: false,
            expanded: false,
            order: 550,
            rolesVisible: [...this.todosRoles],
            subMenu: [
                {
                title: 'Drag & Drop',
                routerLink: 'tools/drag-drop'
                },
                {
                title: 'Resizable',
                routerLink: 'tools/resizable'
                },
                {
                title: 'Toaster',
                routerLink: 'tools/toaster'
                }
            ]
            },
            {
            title: 'Mail',
            routerLink: 'mail/mail-list/inbox',
            icon: 'fa-envelope-o',
            selected: false,
            expanded: false,
            order: 330,
            rolesVisible: [...this.todosRoles]
            },
            {
            title: 'Calendar',
            routerLink: 'calendar',
            icon: 'fa-calendar',
            selected: false,
            expanded: false,
            order: 350,
            rolesVisible: [...this.todosRoles]
            },
            {
            title: 'Form Elements',
            routerLink: 'form-elements',
            icon: 'fa-pencil-square-o',
            selected: false,
            expanded: false,
            order: 400,
            rolesVisible: [...this.todosRoles],
            subMenu: [
                {
                title: 'Form Inputs',
                routerLink: 'form-elements/inputs'
                },
                {
                title: 'Form Layouts',
                routerLink: 'form-elements/layouts'
                },
                {
                title: 'Form Validations',
                routerLink: 'form-elements/validations'
                },
                {
                title: 'Form Wizard',
                routerLink: 'form-elements/wizard'
                }
            ]
            },
            {
            title: 'Tables',
            routerLink: 'tables',
            icon: 'fa-table',
            selected: false,
            expanded: false,
            order: 500,
            rolesVisible: [...this.todosRoles],
            subMenu: [
                {
                title: 'Basic Tables',
                routerLink: 'tables/basic-tables'
                },
                {
                title: 'Dynamic Tables',
                routerLink: 'tables/dynamic-tables'
                }
            ]
            },
            {
            title: 'Editors',
            routerLink: 'editors',
            icon: 'fa-pencil',
            selected: false,
            expanded: false,
            order: 550,
            rolesVisible: [...this.todosRoles],
            subMenu: [
                {
                title: 'Froala Editor',
                routerLink: 'editors/froala-editor'
                },
                {
                title: 'Ckeditor',
                routerLink: 'editors/ckeditor'
                }
            ]
            },
            {
            title: 'Maps',
            routerLink: 'maps',
            icon: 'fa-globe',
            selected: false,
            expanded: false,
            order: 600,
            rolesVisible: [...this.todosRoles],
            subMenu: [
                {
                title: 'Vector Maps',
                routerLink: 'maps/vectormaps'
                },
                {
                title: 'Google Maps',
                routerLink: 'maps/googlemaps'
                },
                {
                title: 'Leaflet Maps',
                routerLink: 'maps/leafletmaps'
                }
            ]
            },
            {
            title: 'Pages',
            routerLink: ' ',
            icon: 'fa-file-o',
            selected: false,
            expanded: false,
            order: 650,
            rolesVisible: [...this.todosRoles],
            subMenu: [
                {
                title: 'Login',
                routerLink: '../sesion/login'
                },
                {
                title: 'Register',
                routerLink: '/register'
                },
                {
                title: 'Blank Page',
                routerLink: 'blank'
                },
                {
                title: 'Error Page',
                routerLink: '/pagenotfound'
                }
            ]
            },
            {
            title: 'Menu Level 1',
            icon: 'fa-ellipsis-h',
            selected: false,
            expanded: false,
            order: 700,
            rolesVisible: [...this.todosRoles],
            subMenu: [
                {
                title: 'Menu Level 1.1',
                url: '#',
                disabled: true,
                selected: false,
                expanded: false
                },
                {
                title: 'Menu Level 1.2',
                url: '#',
                subMenu: [{
                    title: 'Menu Level 1.2.1',
                    url: '#',
                    disabled: true,
                    selected: false,
                    expanded: false
                }]
                }
            ]
            },
            {
            title: 'External Link',
            url: 'http://themeseason.com',
            icon: 'fa-external-link',
            selected: false,
            expanded: false,
            order: 800,
            rolesVisible: [...this.todosRoles],
            target: '_blank'
            }
        ];
        // this.menuItems = [];
        this.menuItems.push({
            title: 'UI Borrar antes de presentar',
            icon: 'fa-external-link',
            selected: false,
            expanded: false,
            order: 800,
            rolesVisible: [...this.todosRoles],
            subMenu: componentes_ui
        })
    }
}

