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

  constructor() { }

  ngOnInit() {
  }

  onSubmit(myForm: FormGroup) {
    let newSocio = Object.assign({}, this._socio);
    this._socio = new Socio(0,"","","");
    newSocio.fechaCreacion = new Date();

    this.socios.push(newSocio)
    myForm.reset();
    console.log("submit socio"); }
}
