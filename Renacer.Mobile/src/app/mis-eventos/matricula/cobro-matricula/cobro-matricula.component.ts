import { Component, OnInit, ViewChild, ElementRef, HostListener } from '@angular/core';

import { Socio, SocioMatriculaServices, SocioServices } from '../../../servicios/socio.service';
import { ToastrService } from 'ngx-toastr';
import { Matricula } from '../../../modelos/matricula';
import { ImprimirService } from '../../../servicios/imprimir.service';
import { DatePipe } from '@angular/common';

@Component({
  selector: 'az-cobro-matricula',
  templateUrl: './cobro-matricula.component.html',
  styles:[]
})
export class CobroMatriculaComponent implements OnInit {

  socios: Socio[];
  sociosOriginal: Socio[];
  socioSeleccionado: Socio;
  matricula: Matricula;
  showModalCobro = false;
  searchText = '';
  
  @ViewChild('imprimirPDF', {static: false}) myPrintHtml: ElementRef;

  constructor(private _socioService: SocioServices, private _matriculaService: SocioMatriculaServices,
    private  mensajeServ: ToastrService, private _imprimir:ImprimirService ) { }

  ngOnInit() {
    this.getItems();
    this.getMatricula();
  }

  getItems() {  
    this._socioService.query({'estado': "DebeMatricula" }).subscribe(items => {
      this.socios= items;
      this.sociosOriginal=items;
    });
  }

  getMatricula(){
    this._matriculaService.getMatriculaActual().subscribe(item => {
      this.matricula= item;
    });
  }

  abrirModalCobro(_socio:Socio){
    this.socioSeleccionado = _socio;
    this.showModalCobro = true;
  }

  cobrar(){
    this._matriculaService.cambiarEstadoMatricula(this.socioSeleccionado.id).subscribe
      (resp => {
        this.showModalCobro = false;
        this.socioSeleccionado = null;
        this.mensajeServ.success('Se ha registrado el pago!', 'Aviso!');
        this.printPDF();
        this.getItems();
   });
  }
  
  printPDF(){
    this._imprimir.imprimirMatricula(this.matricula);

  }

  buscar(){
    this.socios=this.sociosOriginal;
    if(this.searchText != ''){
      this.searchText = this.searchText.toLowerCase();
      this.socios = this.socios.filter((item: Socio) => {
        return item.nombre.toLowerCase().indexOf(this.searchText) >= 0 || 
        item.apellido.toLowerCase().indexOf(this.searchText) >= 0 ;
       });

    }
  
  }



}

