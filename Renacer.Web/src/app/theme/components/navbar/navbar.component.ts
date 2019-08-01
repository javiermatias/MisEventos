import { Component, ViewEncapsulation } from '@angular/core';
import { AppState } from '../../../app.state';
import { SidebarService } from '../sidebar/sidebar.service';
import { UserServices } from '../../../servicios/users.service';
import { RolServices } from '../../../servicios/rol.service';
import { Router } from '@angular/router';

@Component({
  selector: 'az-navbar',
  encapsulation: ViewEncapsulation.None,
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.scss'],
  providers: [ SidebarService]
})

export class NavbarComponent {
    public isMenuCollapsed:boolean = false;
    public usuario = {}
    public rol = {}
    constructor(private router:Router,private _state:AppState, private _sidebarService:SidebarService,private _usersService:UserServices,
        private _rolService: RolServices) {
        this._state.subscribe('menu.isCollapsed', (isCollapsed) => {
            this.isMenuCollapsed = isCollapsed;
        });
         this.usuario = this._usersService.getCurrent();
         if(this.usuario ==null  ){
            this.router.navigate(['']);
         }else{
         if(this.usuario['nombre'] == ''){
          this.router.navigate(['']);
         }
        }
    }

    public closeSubMenus(){
       this._sidebarService.closeAllSubMenus();
    }

    public toggleMenu() {
        this.isMenuCollapsed = !this.isMenuCollapsed;
        this._state.notifyDataChanged('menu.isCollapsed', this.isMenuCollapsed);
    }
    public cerrarSesion() {
        this._usersService.setCurrent(null);
        //this._rolService.setCurrent(null);
        this.router.navigate([''])
  .then(() => {
   //   console.log("se cargo bien");
    window.location.reload();
  });
       // this.router.navigate(['']);
    }

}
