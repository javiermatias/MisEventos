import { Component, OnInit , Input} from '@angular/core';
import {TipoEspacio,TipoEspacioServices} from '../tipoEspacio.service';
import {FormGroup} from '@angular/forms';
import {DatePipe} from '@angular/common' ;
import { ToastrService, ToastrConfig } from 'ngx-toastr';

@Component({
  selector: 'az-tipoEspacio',
  templateUrl: './tipoEspacio.component.html'
})
export class TipoEspacioComponent implements OnInit {

  public _tipoEspacio = new TipoEspacio(0,"");
  public tiposEspacio: TipoEspacio[] = [];
  @Input() tipoEspacio: TipoEspacio;
  public showDetail:boolean = false;

  constructor(private _tipoEspacioService:TipoEspacioServices,private mensajeServ: ToastrService) {
  }

  ngOnInit() {
    this.getItems();
  }

  getItems(){
    this._tipoEspacioService.query({},(items:TipoEspacio[]) => {
      this.tiposEspacio = items;
    }
  );
}

onSubmit(myForm: FormGroup) {
  let newEspacio = Object.assign({}, this._tipoEspacio);
  this._tipoEspacio = new TipoEspacio(0,"");
  // newEspacio.fechaCreacion = new Date();
  this.saveItem(newEspacio)
  myForm.reset();
}

verItem(item:TipoEspacio){
  this._tipoEspacioService.get({"id":item.id},(resp:TipoEspacio) => {
    this._tipoEspacio = resp;
    this.showDetail = true;
  });
}
nuevoItem(){
  this._tipoEspacio =  new TipoEspacio(0,"");
  this.showDetail = true;
}
limpiarForm(){
  this._tipoEspacio =  new TipoEspacio(0,"");
  this.showDetail = false;
}

saveItem(item:TipoEspacio):any{
  if(item.id == 0){
    this._tipoEspacioService.save(item,(resp:TipoEspacio) => {
      item = resp;
      this.tiposEspacio.push(item);
      this.showDetail = false;
      this.mensajeServ.success('Se han guardado los cambios!', 'Aviso!');
    });
  }else{
    this._tipoEspacioService.update(item,(resp:TipoEspacio) => {
      let tipos = this.tiposEspacio;
      let tipoModificado = tipos.find((tipo: TipoEspacio) => {
        return tipo.id === resp.id;
      });
      if (tipoModificado) {
          tipoModificado = resp;
          this.mensajeServ.success('Se han guardado los cambios!', 'Aviso!');
      }
    //   for (var i = 0; i < tipos.length; i++) {
    //     if(tipos[i].id == resp.id)
    //     { tipos[i] = resp;
    //     }
    //   }
      this.showDetail = false;
    });
  }
}

}
