import { Component, OnInit , Input, Output} from '@angular/core';
import { RolServices, Rol } from '../../resources/rol.service';
import {FormGroup} from '@angular/forms';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'az-rolesUsuario',
  templateUrl: './rolesUsuario.component.html'
})
export class RolesUsuarioComponent {

  @Input() rolesUsuario: Rol[];
  public rolSeleccionado: Rol;
  public showDetail:boolean = false;

  constructor(private _rolService:RolServices, private mensajeServ: ToastrService) {
  }

  
  seleccionItem(item: Rol) {
    this._rolService.setCurrent(item);
    }
}
