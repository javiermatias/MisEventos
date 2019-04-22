import { Component, OnInit , Input} from '@angular/core';
import { RolServices, Rol } from '../../resources/rol.service';
import {FormGroup} from '@angular/forms';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'az-rol',
  templateUrl: './rol.component.html'
})
export class RolComponent implements OnInit {

  public _rol = new Rol(0,"");
  public roles: Rol[] = [];
  @Input() rol: Rol;
  public showDetail:boolean = false;

  constructor(private _rolService:RolServices, private mensajeServ: ToastrService) {
  }

  ngOnInit() {
    this.getRoles();
  }

  getRoles() {
    this._rolService.query({},(rols:Rol[]) => {
      this.roles = rols;
    }
  );
}

onSubmit(myForm: FormGroup) {
  let newRol = Object.assign({}, this._rol);
  this._rol = new Rol(0,"");
  this.saveItem(newRol)
  myForm.reset();
}

verItem(item:Rol){
  this._rolService.get({"id":item.id},(resp:Rol) => {
    this._rol = resp;
    this.showDetail = true;
  });
}
nuevoItem(){
  this._rol =  new Rol(0,"");
  this.showDetail = true;
}
limpiarForm(){
  this._rol =  new Rol(0,"");
  this.showDetail = false;
}

saveItem(item:Rol):any{
  if(item.id == 0){
    this._rolService.save(item,(resp:Rol) => {
      item = resp;
      this.roles.push(item);
      this.showDetail = false;
      this.mensajeServ.success('Se han guardado los cambios!', 'Aviso!');
    });
  }else{
    this._rolService.update(item,(resp:Rol) => {
      let index = this.roles.findIndex(t => t.id == resp.id);
      this.roles[index] = resp;
      this.showDetail = false;
      this.mensajeServ.success('Se han guardado los cambios!', 'Aviso!');
    });
  }
}
}
