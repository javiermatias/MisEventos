import { Component, OnInit } from '@angular/core';
import { RolServices, Rol } from '../../resources/rol.service';
import { ToastrService } from 'ngx-toastr';
import { Router } from '@angular/router';

@Component({
  selector: 'az-rolesUsuario',
  templateUrl: './rolesUsuario.component.html'
})
export class RolesUsuarioComponent implements OnInit {
  
  public rolesUsuario: Rol[];
  public rolSeleccionado: Rol;
  public showDetail:boolean = false;
  private usuarioLogueado;
  
  constructor(private _rolService:RolServices, private mensajeServ: ToastrService, private router: Router) {
  }
  ngOnInit(): void {    
    this.rolesUsuario = JSON.parse(localStorage.usuario).roles;
  }

  
  seleccionItem(item: Rol) {
    this._rolService.setCurrent(item);
    this.router.navigate(['pages/dashboard']);
    }
}
