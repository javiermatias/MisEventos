import { Component, OnInit } from '@angular/core';
import { ReporteServices } from '../../../../servicios/reporte.service';
import { TipoEventoServices, TipoEvento } from '../../../../servicios/evento.service';
// import {ReporteServices} from 'app/servicios/reporte.service';

@Component({
  selector: 'app-ranking-eventos',
  templateUrl: './ranking.component.html',
  styleUrls: ['./ranking.component.scss']
})
export class RankingComponent implements OnInit {

   tiposEventos:TipoEvento[];
   tipoEvento:TipoEvento;
  eventosRanking: any[];
  generalRanking: any[];
  encargadosRanking: any[];
  contenidosRanking: any[];
  eventosRankingConfig: any;
  encargadosTopConfig: any;
  encargadosTop: any[];
  public gratuito:Boolean = false;
  constructor(private serv: ReporteServices, private tipoEventoServ:TipoEventoServices) {
   }

  ngOnInit() {
    this.tipoEventoServ.query({}).subscribe(_items => {
      this.tiposEventos = _items;
    });

    this.encargadosTopConfig = {
      columnas: [
         {name: 'nro', title: 'Nro.', type: 'counter'}
        , {name: 'nombre', title: 'Nombre', type: 'text'}
        , {name: 'cursos', title: 'Cursos', type: 'text'}
      ]
    };

    this.eventosRankingConfig = {
      columnas: [
          {name: 'orden', title: 'Nro.', type: 'text'}
        , {name: 'nombre', title: 'Nombre', type: 'text'}
        , {name: 'tipoevento', title: 'Tipo de evento', type: 'text'}
        , {name: 'cantidadVotos', title: 'Opiniones', type: 'text'}
        , {name: 'stars', title: 'Valoración', type: 'stars'}
      ]
    }

    this.getRankingEventos(0, 0);

    //this.test();

  }

  test() {
    this.encargadosTop = [
      {'nro': 1, 'nombre': 'Evento Prueba 1', 'cursos': 5},
      {'nro': 2, 'nombre': 'Evento Prueba 2', 'cursos': 4.7},
      {'nro': 3, 'nombre': 'Evento Prueba 2', 'cursos': 4.3},
      {'nro': 4, 'nombre': 'Evento Prueba 2', 'cursos': 3.5},
      {'nro': 5, 'nombre': 'Evento Prueba 2', 'cursos': 3.1},
      {'nro': 6, 'nombre': 'Evento Prueba 2', 'cursos': 3},
      {'nro': 7, 'nombre': 'Evento Prueba 2', 'cursos': 2.5},
      {'nro': 8, 'nombre': 'Evento Prueba 2', 'cursos': 2.4},
      {'nro': 9, 'nombre': 'Evento Prueba 2', 'cursos': 2.2},
      {'nro': 10, 'nombre': 'Evento Prueba 2', 'cursos': 1.7}
   ];
    this.eventosRanking = [
      {'nro': 1, 'nombre': 'Evento Prueba 1', 'stars': 5},
      {'nro': 2, 'nombre': 'Evento Prueba 2', 'stars': 4.7},
      {'nro': 3, 'nombre': 'Evento Prueba 2', 'stars': 4.3},
      {'nro': 4, 'nombre': 'Evento Prueba 2', 'stars': 3.5},
      {'nro': 5, 'nombre': 'Evento Prueba 2', 'stars': 3.1},
      {'nro': 6, 'nombre': 'Evento Prueba 2', 'stars': 3},
      {'nro': 7, 'nombre': 'Evento Prueba 2', 'stars': 2.5},
      {'nro': 8, 'nombre': 'Evento Prueba 2', 'stars': 2.4},
      {'nro': 9, 'nombre': 'Evento Prueba 2', 'stars': 2.2},
      {'nro': 10, 'nombre': 'Evento Prueba 2', 'stars': 1.7}
   ];
   this.contenidosRanking = [
     {'nro': 1, 'nombre': 'Evento Prueba 1', 'stars': 5},
     {'nro': 2, 'nombre': 'Evento Prueba 2', 'stars': 4.7},
     {'nro': 3, 'nombre': 'Evento Prueba 2', 'stars': 4.3},
     {'nro': 4, 'nombre': 'Evento Prueba 2', 'stars': 3.5},
     {'nro': 5, 'nombre': 'Evento Prueba 2', 'stars': 3.1},
     {'nro': 6, 'nombre': 'Evento Prueba 2', 'stars': 3},
     {'nro': 7, 'nombre': 'Evento Prueba 2', 'stars': 2.5},
     {'nro': 8, 'nombre': 'Evento Prueba 2', 'stars': 2.4},
     {'nro': 9, 'nombre': 'Evento Prueba 2', 'stars': 2.2},
     {'nro': 10, 'nombre': 'Evento Prueba 2', 'stars': 1.7}
    ];
    this.encargadosRanking = [
    {'nro': 1, 'nombre': 'Evento Prueba 1', 'stars': 5},
    {'nro': 2, 'nombre': 'Evento Prueba 2', 'stars': 4.7},
    {'nro': 3, 'nombre': 'Evento Prueba 2', 'stars': 4.3},
    {'nro': 4, 'nombre': 'Evento Prueba 2', 'stars': 3.5},
    {'nro': 5, 'nombre': 'Evento Prueba 2', 'stars': 3.1},
    {'nro': 6, 'nombre': 'Evento Prueba 2', 'stars': 3},
    {'nro': 7, 'nombre': 'Evento Prueba 2', 'stars': 2.5},
    {'nro': 8, 'nombre': 'Evento Prueba 2', 'stars': 2.4},
    {'nro': 9, 'nombre': 'Evento Prueba 2', 'stars': 2.2},
    {'nro': 10, 'nombre': 'Evento Prueba 2', 'stars': 1.7}
    ]
  }

 getRankingEventos(gratuito:number, tipoEvento:number){
  this.serv.getRankingEventos({"gratuito":gratuito,"tipoEvento":tipoEvento}).subscribe( (x: any) => {
   
    this.eventosRanking=[];
    this.generalRanking=[];
    this.encargadosRanking=[];
    this.contenidosRanking=[];
   
    this.encargadosRanking = x.encargados;
    this.eventosRanking = x.eventos;
    this.contenidosRanking = x.contenidos;
    this.generalRanking = x.general;
  });
 }



  filtrar(){
let gratuito = 0;
let tipoEvento=0;


if(this.gratuito) {
  gratuito=1;
} 

//console.log(this.tipoEvento.id);

if(this.tipoEvento  === undefined || this.tipoEvento ==null  ){

  tipoEvento=0;
}else{
  tipoEvento = this.tipoEvento.id;
  
}

this.getRankingEventos(gratuito,tipoEvento);

console.log( tipoEvento);
console.log(gratuito);


  }
}
