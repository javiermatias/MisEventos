import { Component, OnInit } from '@angular/core';
import { EventoServices, Evento } from '../../../../servicios/evento.service';
import { DatePipe } from '@angular/common';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'az-time-line',
  templateUrl: './time-line.component.html',
  styleUrls: ['./time-line.component.scss']
})
export class TimeLineComponent implements OnInit {
  title = 'Actividad Socios';
  type = 'Timeline';
  myData2=[];
  //columnNames = ['President', 'Start','End'];
  myData = [
    
    [ 'SECRETARIADO Y RECEPCIÓN', new Date(1789, 3, 30), new Date(1797, 2, 4) ],
    [ 'Adams',      new Date(1797, 2, 4),  new Date(1801, 2, 4) ],
    [ 'Jefferson',  new Date(1801, 2, 4),  new Date(1809, 2, 4) ]
  ]

  mostrargrafico=false;
  width = 950;
  height = 800;
  public eventos :Evento[];

  public eventosOriginal :Evento[];
  public fecha:string;

  public fechaDesde:string;
  public fechaHasta:string;

  public pasoInscripciones=false;
  public estado:string;
  //startDate = 
  //Nuevo,Cancelado,Progreso,Finalizado
  constructor(private _itemsService:EventoServices,private datePipe: DatePipe, private toastrService: ToastrService,) { 
    this.fechaDesde = this.datePipe.transform(new Date(new Date().getFullYear(), 0, 1), 'yyyy-MM-dd');
    this.fechaHasta = this.datePipe.transform(new Date(), 'yyyy-MM-dd');
   this.fecha="fechaInicio";
  }

  ngOnInit() {
    //google.charts.load('current', {'packages':['corechart'], 'language': 'es'});
    this.getItems();
    console.log(this.myData);
  }
  filtrar(){
    //this.mostrargrafico=false;
    //agregar un estado sin filtro fecha
  /*   //alert("click en filtrar"); 
 // console.log(this.fecha);
  console.log(this.fechaDesde);
  console.log(this.fechaHasta);
  console.log(this.estado); */
  this.pasoInscripciones=false;
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
        this.pasoInscripciones=true;
      this.eventos.sort(function(a, b) {
        let c = new Date(a.fechaDesdeInscripcion);
        let d = new Date(b.fechaDesdeInscripcion);
        return d>c ? -1 : d<c ? 1 : 0;
    });
    break; 

    case ("fechaFinInscripcion"):
        this.pasoInscripciones=true;
      this.eventos.sort(function(a, b) {
        let c = new Date(a.fechaHastaInscripcion);
        let d = new Date(b.fechaHastaInscripcion);
        return d>c ? -1 : d<c ? 1 : 0;
    });
    break;

}

if(this.estado != null && this.estado != "Todos"){
  this.eventos = this.eventos.filter((item: Evento) => {
    return item.estado == this.estado;

});
}

if(this.pasoInscripciones){

  if(this.fechaHasta != null  && this.fechaHasta != ""  && this.fechaDesde != null
  && this.fechaDesde != ""){
    this.eventos = this.eventos.filter((item: Evento) => {
      return this.datePipe.transform(item.fechaDesdeInscripcion, 'yyyy-MM-dd') >= this.fechaDesde
      &&  this.datePipe.transform(item.fechaHastaInscripcion, 'yyyy-MM-dd') <= this.fechaHasta;
  });
  }

  if(this.eventos.length==0){
    this.toastrService.error('No se encontraron datos con este filtro');
  }else{
  this.myData2=[];
  this.eventos.forEach(element => {
    let fila=[element.nombre,new Date(element.fechaDesdeInscripcion.toString()), new Date(element.fechaHastaInscripcion.toString())];
   this.myData2.push(fila);
  });
 }
}else{


if(this.fechaHasta != null  && this.fechaHasta != ""  && this.fechaDesde != null
&& this.fechaDesde != ""){
  this.eventos = this.eventos.filter((item: Evento) => {
    return this.datePipe.transform(item.fechaDesde, 'yyyy-MM-dd') >= this.fechaDesde
    &&  this.datePipe.transform(item.fechaDesde, 'yyyy-MM-dd') <= this.fechaHasta;
});
}

if(this.eventos.length==0){
  this.toastrService.error('No se encontraron datos con este filtro');
}else{
  this.myData2=[];
  this.eventos.forEach(element => {
    let fila=[element.nombre,new Date(element.fechaDesde.toString()), new Date(element.fechaHasta.toString())];
   this.myData2.push(fila);
  });

}



}



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

  this.eventos.forEach(element => {
    let fila=[element.nombre,new Date(element.fechaDesde.toString()), new Date(element.fechaHasta.toString())];
   this.myData2.push(fila);
  });
  //console.log(this.myData2);
  this.mostrargrafico=true;
      //this.eventos = items;
    /*   console.log(this.eventos);

     this.mostrargrafico=true;  */
    });
  }
}
