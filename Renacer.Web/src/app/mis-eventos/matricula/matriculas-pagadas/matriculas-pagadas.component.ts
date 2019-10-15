import { Component, OnInit, ViewChild, ElementRef } from '@angular/core';
import { MatriculaxsocioService } from '../../../servicios/matriculaxsocio.service';
import { MatriculaXsocio } from '../../../modelos/matricula-xsocio';
import { SocioServices, SocioMatriculaServices, Socio } from '../../../servicios/socio.service';
import { Matricula } from '../../../modelos/matricula';
import { MatriculaServices } from '../../../servicios/matricula.service';
import { Array } from 'core-js';
/* import 'jspdf';
import 'jspdf-autotable';
declare let jsPDF; */
declare const require: any;
const jsPDF = require('jspdf');
require('jspdf-autotable');

@Component({
  selector: 'az-matriculas-pagadas',
  templateUrl: './matriculas-pagadas.component.html',
  styleUrls: []
})
export class MatriculasPagadasComponent implements OnInit {
  matriculas: MatriculaXsocio[];

  _matriculaXsocio: MatriculaXsocio;
  socios: Socio[];
  matricula: Matricula;

  largo: string;

  filtro: string;

  @ViewChild('contenidoTabla', {static: false}) tabla: ElementRef;

  constructor(private _matriculaxsocioService: MatriculaxsocioService,
    private _matriculaService: SocioMatriculaServices,
    private _socioService: SocioServices ) { }

  ngOnInit() {
    this.filtro = 'pagadas';
    this.getMatriculasPagadas();
    this.getMatricula();
  }

  getMatriculasPagadas() {

    this._matriculaxsocioService.query({}).subscribe(items => {
      this. matriculas = items;
      this.largo = this.matriculas.length.toString();
    })
  }

  matriculasSinPagar() {
    let _matriculas: MatriculaXsocio[] = [];
    this._socioService.query({'estado': 'DebeMatricula' }).subscribe(items => {
      this.socios = items;
      for (let _socio of this.socios) {
        let matriculaXsocio = new MatriculaXsocio();
             matriculaXsocio.socio = _socio;
             matriculaXsocio.matricula = this.matricula;
            _matriculas.push(matriculaXsocio);
      }
      this.matriculas = _matriculas;
      this.largo = this.matriculas.length.toString();
    });
  }
  getMatricula() {
    this._matriculaService.getMatriculaActual().subscribe(item => {
      this.matricula = item;
    });
  }

  filtrar() {

    switch (this.filtro) {
      case ('pagadas'):
        this.getMatriculasPagadas();
      break;
      case ('sinPagar'):
        this.matriculasSinPagar();
      break;


  }
}

Imprimir(){
  let doc = new jsPDF();

  let columns = ["ID", "Name", "Country"];
  let rows = [
      [1, "Shaw", "Tanzania"],
      [2, "Nelson", "Kazakhstan"],
      [3, "Garcia", "Madagascar"],
  ];

 

  doc.autoTable(columns, rows)
  doc.save('table.pdf'); 

}


}
