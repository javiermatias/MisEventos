import { Component, OnInit, Input } from '@angular/core';
import { Domicilio } from '../../../resources/persona.service';

@Component({
  selector: 'az-domicilio',
  templateUrl: './domicilio.component.html'
})
export class DomicilioComponent implements OnInit {

  @Input() _domicilio: Domicilio;

  constructor() {
    this._domicilio = new Domicilio();
  }

  ngOnInit() {
  }

}
