import { Component, OnInit , Input} from '@angular/core';
import { PerfilServices, Perfil } from '../../resources/perfil.service';
import {FormGroup} from '@angular/forms';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'az-perfil',
  templateUrl: './perfil.component.html'
})
export class PerfilComponent implements OnInit {

  public _perfil = new Perfil(0,"");
  public perfiles: Perfil[] = [];
  @Input() perfil: Perfil;
  public showDetail:boolean = false;

  constructor(private _perfilService:PerfilServices, private mensajeServ: ToastrService) {
  }

  ngOnInit() {
    this.getPerfiles();
  }

  getPerfiles() {
    this._perfilService.query({},(profiles:Perfil[]) => {
      this.perfiles = profiles;
    }
  );
}

onSubmit(myForm: FormGroup) {
  let newPerfil = Object.assign({}, this._perfil);
  this._perfil = new Perfil(0,"");
  this.saveItem(newPerfil)
  myForm.reset();
}

verItem(item:Perfil){
  this._perfilService.get({"id":item.id},(resp:Perfil) => {
    this._perfil = resp;
    this.showDetail = true;
  });
}
nuevoItem(){
  this._perfil =  new Perfil(0,"");
  this.showDetail = true;
}
limpiarForm(){
  this._perfil =  new Perfil(0,"");
  this.showDetail = false;
}

saveItem(item:Perfil):any{
  if(item.id == 0){
    this._perfilService.save(item,(resp:Perfil) => {
      item = resp;
      this.perfiles.push(item);
      this.showDetail = false;
      this.mensajeServ.success('Se han guardado los cambios!', 'Aviso!');
    });
  }else{
    this._perfilService.update(item,(resp:Perfil) => {
      let index = this.perfiles.findIndex(t => t.id == resp.id);
      this.perfiles[index] = resp;
      this.showDetail = false;
      this.mensajeServ.success('Se han guardado los cambios!', 'Aviso!');
    });
  }
}
}
