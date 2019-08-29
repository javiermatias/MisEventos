import { Component, OnInit } from '@angular/core';
import { Contrasenia } from '../../../modelos/contrasenia';

@Component({
  selector: 'az-cambio-contrasenia',
  templateUrl: './cambio-contrasenia.component.html'
})
export class CambioContraseniaComponent implements OnInit {

  contrasenia = new Contrasenia();

  submitted = false;

  onSubmit() { this.submitted = true; }
  public password:string="";

  public passwordActual:string="";
public barLabel: string = "Nivel de Seguridad:";
public myColors = ['#DD2C00', '#FF6D00', '#FFD600', '#AEEA00', '#00C853'];
  constructor() { }

  ngOnInit() {
  }

}
