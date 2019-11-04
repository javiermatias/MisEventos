import { Component, OnInit, Input } from '@angular/core';
import { Domicilio } from '../../../servicios/persona.service';
import { barrios } from '../../../modelos/enums';

@Component({
  selector: 'az-domicilio',
  templateUrl: './domicilio.component.html'
})
export class DomicilioComponent implements OnInit {

  @Input() _domicilio: Domicilio;

  public _barrios= barrios;
  constructor() {
    this._domicilio = new Domicilio();
  }

  ngOnInit() {
  }

}
