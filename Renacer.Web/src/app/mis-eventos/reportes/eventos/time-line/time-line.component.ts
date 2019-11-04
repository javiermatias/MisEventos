import { Component, OnInit } from '@angular/core';
import { EventoServices, Evento } from '../../../../servicios/evento.service';
import { DatePipe } from '@angular/common';

@Component({
  selector: 'az-time-line',
  templateUrl: './time-line.component.html',
  styleUrls: ['./time-line.component.scss']
})
export class TimeLineComponent implements OnInit {

  public eventos :Evento[];

  public eventosOriginal :Evento[];
  public fecha:string;

  public fechaDesde:string;

  public fechaHasta:string;

  public estado:string;
  //startDate = 
  //Nuevo,Cancelado,Progreso,Finalizado
  constructor(private _itemsService:EventoServices,private datePipe: DatePipe) { 
    this.fechaDesde = this.datePipe.transform(new Date(), 'yyyy-MM-dd');
    this.fechaHasta = this.datePipe.transform(new Date(new Date().getFullYear(),11,30 ), 'yyyy-MM-dd');
   this.fecha="fechaInicio";
  }

  ngOnInit() {
    this.getItems();
  }
  filtrar(){

    //agregar un estado sin filtro fecha
  /*   //alert("click en filtrar"); 
 // console.log(this.fecha);
  console.log(this.fechaDesde);
  console.log(this.fechaHasta);
  console.log(this.estado); */
  this.eventos= this.eventosOriginal;
  switch (this.fecha) {
    case ("fechaInicio"):
      this.eventos.sort(function(a, b) {
        let c = new Date(a.fechaDesde);
        let d = new Date(b.fechaDesde);
        return d>c ? -1 : d<c ? 1 : 0;
    });
    break;
    case ("fechaFin"):
      this.eventos.sort(function(a, b) {
        let c = new Date(a.fechaHasta);
        let d = new Date(b.fechaHasta);
        return d>c ? -1 : d<c ? 1 : 0;
    });
    break;  


    case ("fechaInicioInscripcion"):
      this.eventos.sort(function(a, b) {
        let c = new Date(a.fechaDesdeInscripcion);
        let d = new Date(b.fechaDesdeInscripcion);
        return d>c ? -1 : d<c ? 1 : 0;
    });
    break; 

    case ("fechaFinInscripcion"):
      this.eventos.sort(function(a, b) {
        let c = new Date(a.fechaHastaInscripcion);
        let d = new Date(b.fechaHastaInscripcion);
        return d>c ? -1 : d<c ? 1 : 0;
    });
    break;

}

if(this.fechaHasta != null  && this.fechaHasta != ""  && this.fechaDesde != null
&& this.fechaDesde != ""){
  this.eventos = this.eventos.filter((item: Evento) => {
    return this.datePipe.transform(item.fechaDesde, 'yyyy-MM-dd') >= this.fechaDesde
    &&  this.datePipe.transform(item.fechaDesde, 'yyyy-MM-dd') <= this.fechaHasta;
});
}

//console.log(this.estado);
if(this.estado != null && this.estado != "Todos"){
  this.eventos = this.eventos.filter((item: Evento) => {
    return item.estado == this.estado;

});
}
console.log(this.eventos);


  }
  getItems(){
    this._itemsService.query({'search':' '}).subscribe(items => {
      items.sort(function(a, b) {
        let c = new Date(a.fechaDesde);
        let d = new Date(b.fechaDesde);
        return d>c ? -1 : d<c ? 1 : 0;
    });
    this.eventosOriginal=items;
    console.log(this.eventosOriginal);
    this.eventos = items.filter((item: Evento) => {
      return this.datePipe.transform(item.fechaDesde, 'yyyy-MM-dd') >= this.fechaDesde;
  });
      //this.eventos = items;
      //console.log(this.eventos);
      }
     );
    }
}
