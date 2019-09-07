import { Component, OnInit, ViewChild, ElementRef } from '@angular/core';
// import { IMultiSelectSettings, IMultiSelectTexts, IMultiSelectOption } from 'angular-2-dropdown-multiselect';
import { Socio, SocioServices } from '../../../servicios/socio.service';
import { DomSanitizer } from '@angular/platform-browser';
import { InscripcionServices, Inscripcion, Evento, PagoServices, Pago } from '../../../servicios/evento.service';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'az-pago-cuota',
  templateUrl: './pago-cuota.component.html'
})
export class PagoCuotaComponent implements OnInit {
  public listaSocios = new Array<Socio>();
   public selectedSocio:Socio;
  listaInscripcion:Array<Inscripcion>;
  seleccionInscripcion:Inscripcion; // evento Seleccionado
  mostrarGrilla=false;
  cuota:Pago;
  confirmarPago:boolean=false;
  @ViewChild('imprimirPDF') myPrintHtml: ElementRef;
 
  constructor( private _dbServices:SocioServices,private inscripcionServ:InscripcionServices, private pagoServ:PagoServices
    ,private mensajeServ: ToastrService) { 

  }

  cambioEvento(){
    console.log(this.seleccionInscripcion);
    this.seleccionInscripcion.listaPagos.sort(function(a, b) { 
      return (a.id - b.id) 
  });

    this.mostrarGrilla=true;
  }

  socioSeleccionado(socio:Socio){
  this.selectedSocio=socio;
   this.traerInscripciones(socio.id);
  }

  traerInscripciones(idSocio:number){
    
    this.inscripcionServ.query({'idSocio':idSocio}).subscribe(items => {
      this.listaInscripcion = items;    
      console.log(items);
      }
     );
    
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
    '<html><head><link rel="stylesheet" type="text/css" href="style.css" /> <style>td,th{border: 1px solid;margin:0;padding:0;}</style></head><body onload="window.print()">'  +
   this.myPrintHtml.nativeElement.innerHTML+
  '</html>'); 
  popupWinindow.document.close(); 
}

pagoConfirmado(){
  this.confirmarPago=false;
  this.cuota.estaPagado=true;
  jQuery('#show-event-modal').modal('hide');
  this.pagoServ.save(this.cuota).subscribe(resp => {
    //Callback
    this.printPDF();
      this.mensajeServ.success('Se registro correctamente el pago!', 'Aviso!');
      //this.volver();
 });
  //this.mensajeServ.success('Se han guardado los cambios!', 'Aviso!');
}

ngOnInit() {
   
}

}
