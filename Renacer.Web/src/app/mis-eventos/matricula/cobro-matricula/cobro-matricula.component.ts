import { Component, OnInit, ViewChild, ElementRef } from '@angular/core';

import { Socio, SocioMatriculaServices, SocioServices } from '../../../servicios/socio.service';
import { ToastrService } from 'ngx-toastr';
import { Matricula } from '../../../modelos/matricula';

@Component({
  selector: 'az-cobro-matricula',
  templateUrl: './cobro-matricula.component.html',
  styles:[]
})
export class CobroMatriculaComponent implements OnInit {

  socios:Socio[];
  socioSeleccionado:Socio;
  matricula:Matricula;
  showModalCobro:boolean= false;
  @ViewChild('imprimirPDF') myPrintHtml: ElementRef;

  constructor(private _socioService:SocioServices, private _matriculaService:SocioMatriculaServices,
    private  mensajeServ: ToastrService ) { }

  ngOnInit() {
    this.getItems();
    this.getMatricula();
  }

  getItems() {  
    this._socioService.query({'estado': "DebeMatricula" }).subscribe(items => {
      this.socios= items;
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
    let popupWinindow = window.open('', '_blank', 'width=600,height=300,scrollbars=no,menubar=no,toolbar=no,location=no,status=no,titlebar=no'); 
    popupWinindow.document.open(); 
    popupWinindow.document.write(
      '<html><head><link rel="stylesheet" type="text/css" href="style.css" /> <style>td,th{border: 1px solid;margin:0;padding:0;}</style></head><body onload="window.print()">'  +
     this.myPrintHtml.nativeElement.innerHTML+
    '</html>'); 
    popupWinindow.document.close(); 
  }



}

