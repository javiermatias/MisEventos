import { Component, OnInit } from '@angular/core';
import { ReporteServices } from '../../../../servicios/reporte.service';
// import {ReporteServices} from 'app/servicios/reporte.service';

@Component({
  selector: 'app-ranking-eventos',
  templateUrl: './ranking.component.html',
  styleUrls: ['./ranking.component.scss']
})
export class RankingComponent implements OnInit {

  eventosRanking: any[];
  generalRanking: any[];
  encargadosRanking: any[];
  contenidosRanking: any[];
  eventosRankingConfig: any;
  encargadosTopConfig: any;
  encargadosTop: any[];

  constructor(private serv: ReporteServices) {
   }

  ngOnInit() {
    this.encargadosTopConfig = {
      columnas: [
         {name: 'nro', title: 'Nro.', type: 'counter'}
        , {name: 'nombre', title: 'Nombre', type: 'text'}
        , {name: 'cursos', title: 'Cursos', type: 'text'}
      ]
    };

    this.eventosRankingConfig = {
      columnas: [
         {name: 'nro', title: 'Nro.', type: 'counter'}
        , {name: 'nombre', title: 'Nombre', type: 'text'}
        , {name: 'stars', title: 'Valoración', type: 'stars'}
      ]
    }

    this.serv.getRankingEventos().subscribe( (x: any) => {
      this.encargadosRanking = x.encargados;
      this.eventosRanking = x.eventos;
      this.contenidosRanking = x.contenidos;
      this.generalRanking = x.general;
    });

    this.test();

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

}
