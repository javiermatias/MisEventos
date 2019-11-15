import { Component, OnInit } from '@angular/core';
import { ProximoEventoService } from '../../../servicios/proximo-evento.service';
import { ProximoEvento } from '../../../modelos/proximo-evento';

@Component({
  selector: 'az-proximos-eventos',
  templateUrl: './proximos-eventos.component.html',
  styleUrls: ['./proximos-eventos.component.scss']
})
export class ProximosEventosComponent implements OnInit {

  constructor(private _proximoEvento:ProximoEventoService ) { }


  proximosEventos: ProximoEvento[];
  ngOnInit() {
    this.getItems();
  }

  getItems(){

    this._proximoEvento.query({}).subscribe(items => {
      // console.log(items);
      this.proximosEventos = items;
      console.log(this.proximosEventos);

    });
  }

}
