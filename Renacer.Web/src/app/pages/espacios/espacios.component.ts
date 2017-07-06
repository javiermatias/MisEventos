import { Component, OnInit } from '@angular/core';
import {EspacioComun,EspacioServices} from '../../resources/espacio.service';
import {FormGroup} from '@angular/forms';
import {DatePipe} from '@angular/common' ;

@Component({
  selector: 'az-espacios',
  templateUrl: './espacios.component.html',
  styleUrls: ['./espacios.component.scss']
})
export class EspaciosComponent implements OnInit {

  public _espacio = new EspacioComun(0,"","",0,0,10);
  public espacios = new Array<EspacioComun>();
  public showDetail:boolean = false;
  constructor(private _espacioService:EspacioServices) { }

  ngOnInit() {
    this.espacios =  this._espacioService.query()
    let espacioEjemplo = new EspacioComun(0,"Mi casa","prueba",0,0,10);
    this.espacios.push(espacioEjemplo);
  }

  onSubmit(myForm: FormGroup) {
    let newEspacio = Object.assign({}, this._espacio);
    this._espacio = new EspacioComun(0,"","",0,0,10);
    newEspacio.fechaCreacion = new Date();
    this.saveEspacio(newEspacio)
    this.espacios.push(newEspacio)
    myForm.reset();
  }

  verItem(item:EspacioComun){
    this._espacio = item;
    this.showDetail = true;
  }

  saveEspacio(item:EspacioComun):any{
      if(item.id == 0){
        this._espacioService.save(item,function(response) {
          return response;
        })
      }else{
        this._espacioService.update(item)
        return "ok";
      }

      console.log("submit Espacio");
    }

}
