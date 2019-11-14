import { Component, OnInit, ViewChild, ElementRef } from '@angular/core';
// import { IMultiSelectSettings, IMultiSelectTexts, IMultiSelectOption } from 'angular-2-dropdown-multiselect';
import { Socio, SocioServices } from '../../../servicios/socio.service';
import { DomSanitizer } from '@angular/platform-browser';
import { InscripcionServices, Inscripcion, Evento, PagoServices, Pago } from '../../../servicios/evento.service';
import { ToastrService } from 'ngx-toastr';
import { MatriculaxsocioService } from '../../../servicios/matriculaxsocio.service';
import { ImprimirService } from '../../../servicios/imprimir.service';

import { HtmlParser } from '@angular/compiler';
import { ExcelService } from '../../../servicios/excel.service';


@Component({
  selector: 'az-pago-cuota',
  templateUrl: './pago-cuota.component.html'
})
export class PagoCuotaComponent implements OnInit {

  html: 'hola';
  public listaSocios = new Array<Socio>();
   public selectedSocio: Socio;
  listaInscripcion: Array<Inscripcion>;
  seleccionInscripcion: Inscripcion; // evento Seleccionado
  mostrarCuotas= false;
  safeHtml;
  mostrarEventos = false;
  cuota: Pago;
  confirmarPago = false;
  searchText = '';
  @ViewChild('imprimirPDF', {static: false}) myPrintHtml: ElementRef;
 
  constructor( private _dbServices: SocioServices, private inscripcionServ: InscripcionServices, private pagoServ: PagoServices
    , private mensajeServ: ToastrService,private imprimirService: ImprimirService , private excelService:ExcelService,
    private sanitizer: DomSanitizer) {
      this.safeHtml = this.sanitizer.bypassSecurityTrustHtml(
        '<button>Click me</button>')

  }

  cambioEvento() {
    console.log(this.seleccionInscripcion);
    this.seleccionInscripcion.listaPagos.sort(function(a, b) { 
      return (a.id - b.id) 
  });

    this.mostrarCuotas=true;
  }

  socioSeleccionado(socio:Socio){
  this.selectedSocio=socio;
   this.traerInscripciones(socio.id);
  }

  traerInscripciones(idSocio:number){
    
    this.inscripcionServ.query({'idSocio':idSocio}).subscribe(items => {
      this.listaInscripcion = items.filter(x => x.evento.gratuito == false);   
      this.mostrarEventos=true;
      console.log(items);
      }
     );
    
}
verCuotas(item: Inscripcion){

  this.seleccionInscripcion = this.listaInscripcion.filter(x => x.id == item.id)[0];
  this.seleccionInscripcion.listaPagos = this.seleccionInscripcion.listaPagos.sort((a, b) => a.nombre.localeCompare(b.nombre))
  console.log(this.seleccionInscripcion);
  this.mostrarCuotas=true;
  this.mostrarEventos=false;

}

cobrarCuota(item){

  this.cuota= item;
  this.confirmarPago=true;
  console.log(item);
jQuery('#show-event-modal').modal('show');

}

printPDF(){
  let popupWinindow = window.open('', '_blank', 'width=600,height=300,scrollbars=no,menubar=no,toolbar=no,location=no,status=no,titlebar=no'); 
   popupWinindow.document.open(); 
  popupWinindow.document.write(
    '<html><head><link rel="stylesheet" type="text/css" href="style.css" /> <style>td,th{border: 1px solid;margin:0;padding:0;}</style></head><body onload="window.print();window.close()">'  +
   this.myPrintHtml.nativeElement.innerHTML+
  '</html>'); 
  popupWinindow.document.close();
  //popupWinindow.close(); 
}

pagoConfirmado(){
  this.confirmarPago=false;
  this.cuota.estaPagado=true;
  jQuery('#show-event-modal').modal('hide');
  this.pagoServ.save(this.cuota).subscribe(resp => {
    //Callback
      console.log(resp);
      this.mensajeServ.success('Se registro correctamente el pago!', 'Aviso!');
      //this.printPDF();
      console.log(resp);
      this.imprimirPdf(resp);
      //this.volver();
 });
  //this.mensajeServ.success('Se han guardado los cambios!', 'Aviso!');
}


imprimirPdf(pago:Pago){


  this.imprimirService.imprimirPago(pago,this.seleccionInscripcion.evento.nombre);

}



pruebaExcel(){
  //this.excelService.generateExcel();
}

volver(){
  this.mostrarCuotas=false;
  this.mostrarEventos=true;
}
ngOnInit() {
   
}

}
