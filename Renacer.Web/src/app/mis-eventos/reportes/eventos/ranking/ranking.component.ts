import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-ranking-eventos',
  templateUrl: './ranking.component.html',
  styleUrls: ['./ranking.component.scss']
})
export class RankingComponent implements OnInit {

  eventosRanking: any[];
  eventosRankingConfig: any;

  constructor() { }

  ngOnInit() {

    this.eventosRankingConfig = { 
      columnas: [
         {name:'nro',title:'Nro.'}
        ,{name:'nombre',title:'Nombre'}
      ]
    }

    this.eventosRanking = [
       {'nro':1,
       'nombre':"Evento Prueba 1"},
       {'nro':2,
       'nombre':"Evento Prueba 2"},
       {'nro':3,
       'nombre':"Evento Prueba 3"}
    ]

  }

}
