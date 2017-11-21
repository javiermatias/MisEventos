import { Component, OnInit,Input } from '@angular/core';
import {Contacto} from "../../resources/socio.service";

@Component({
  selector: 'az-contacto',
  templateUrl: './contacto.component.html',
  styleUrls: ['./contacto.component.scss']
})
export class ContactoComponent implements OnInit {

@Input() _contacto:Contacto;

  constructor() { }

  ngOnInit() {
  }

}
