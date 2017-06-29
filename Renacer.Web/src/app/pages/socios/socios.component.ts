import { Component, OnInit } from '@angular/core';
import {Socio,SocioServices} from '../../resources/socio.service';
import {FormGroup} from '@angular/forms';
import {DatePipe} from '@angular/common' ;
// import { DynamicTablesComponent } from '../tables/dynamic-tables/dynamic-tables.component';

@Component({
  selector: 'az-socios',
  templateUrl: './socios.component.html',
  styleUrls: ['./socios.component.scss']
})
export class SociosComponent implements OnInit {

  public _socio = new Socio(0,"","","");

  public socios = new Array<Socio>();

  constructor(private _socioService:SocioServices) { }

  ngOnInit() {
    this.socios =  this._socioService.query()
  }

  onSubmit(myForm: FormGroup) {
    let newSocio = Object.assign({}, this._socio);
    this._socio = new Socio(0,"","","");
    newSocio.fechaCreacion = new Date();
    this.saveSocio(newSocio)
    this.socios.push(newSocio)
    myForm.reset();
  }

     saveSocio(item:Socio):any{
      if(item.id == 0){
        this._socioService.save(item,function(response) {
          return response;
        })
      }else{
        this._socioService.update(item)
        return "ok";
      }

      console.log("submit socio");
    }
}
