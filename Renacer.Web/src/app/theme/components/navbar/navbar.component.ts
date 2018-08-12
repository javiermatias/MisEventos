import { Component, ViewEncapsulation } from '@angular/core';
import { AppState } from '../../../app.state';
import { SidebarService } from '../sidebar/sidebar.service';
import { UserServices } from '../../../resources/users.service';
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
    constructor(private router:Router,private _state:AppState, private _sidebarService:SidebarService,private _usersService:UserServices) {
        this._state.subscribe('menu.isCollapsed', (isCollapsed) => {
            this.isMenuCollapsed = isCollapsed;
        });
         this.usuario = this._usersService.getCurrent();
         if(this.usuario['nombre'] == ''){
          this.router.navigate(['/login']);
         }
    }

    public closeSubMenus(){
       this._sidebarService.closeAllSubMenus();
    }

    public toggleMenu() {
        this.isMenuCollapsed = !this.isMenuCollapsed;
        this._state.notifyDataChanged('menu.isCollapsed', this.isMenuCollapsed);
    }

}
