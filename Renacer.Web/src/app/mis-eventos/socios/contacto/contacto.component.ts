import { Component, OnInit,Input } from '@angular/core';
import {Contacto} from "../../../resources/socio.service";

@Component({
  selector: 'az-contacto',
  templateUrl: './contacto.component.html'
})
export class ContactoComponent implements OnInit {

@Input() _contacto:Contacto;
@Input() readOnly: boolean = false; // valor por defecto falso
  constructor() { }

  ngOnInit() {

  }

}
