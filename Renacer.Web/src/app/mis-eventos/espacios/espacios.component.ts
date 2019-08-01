import { Component, OnInit , Input} from '@angular/core';
import {EspacioComun,EspacioServices} from '../../servicios/espacio.service';
import {FormGroup} from '@angular/forms';
import {DatePipe} from '@angular/common' ;
import { ToastrService, ToastrConfig } from 'ngx-toastr';
import { TipoEspacioServices, TipoEspacio } from './tipoEspacio/tipoEspacio.service';

@Component({
  selector: 'az-espacios',
  templateUrl: './espacios.component.html'
})
export class EspaciosComponent implements OnInit {

  public _espacio = new EspacioComun(0,"","",0,0);
  @Input() espacios = new Array<EspacioComun>();
  public showDetail:boolean = false;
  public tiposEspacio: TipoEspacio[] = [];
  constructor(private _espacioService:EspacioServices,private mensajeServ: ToastrService,
    private _tipoEspacioService:TipoEspacioServices) {

  }

  ngOnInit() {
    this.getItems();
   //this.mensajeServ.success('Estas viendo tus Espacios!', 'Mensaje!');
  }

  getItems(){
    this._espacioService.query({},(items:EspacioComun[]) => {
      this.espacios = items;
    }
  );
  this._tipoEspacioService.query({},(items:TipoEspacio[]) => {
    this.tiposEspacio = items;
  }
);
}

onSubmit(myForm: FormGroup) {
  let newEspacio = Object.assign({}, this._espacio);
  this._espacio = new EspacioComun(0,"","",0,0);
  // newEspacio.fechaCreacion = new Date();
  this.saveItem(newEspacio)
  myForm.reset();
}

verItem(item:EspacioComun){
  this._espacioService.get({"id":item.id},(resp:EspacioComun) => {
    this._espacio = resp;
    this.showDetail = true;
  });
}
nuevoItem(){
  this._espacio =  new EspacioComun(0,"","",0,0);
  this.showDetail = true;
}
limpiarForm(){
  this._espacio =  new EspacioComun(0,"","",0,0);
  this.showDetail = false;
}

saveItem(item:EspacioComun):any{
  if(item.id == 0){
    this._espacioService.save(item,(resp:EspacioComun) => {
      item = resp;
      this.espacios.push(item);
      this.showDetail = false;
      this.mensajeServ.success('Se han guardado los cambios!', 'Aviso!');
    });
  }else{
    this._espacioService.update(item,(resp:EspacioComun) => {
      let espacios = this.espacios;
      for (var i = 0; i < espacios.length; i++) {
        if(espacios[i].id == resp.id)
        { espacios[i] = resp;
          this.mensajeServ.success('Se han guardado los cambios!', 'Aviso!');
        }
      }
      this.showDetail = false;
    });
  }
}

}
