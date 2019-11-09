import { Component, OnInit } from '@angular/core';
import { Evento, EventoServices } from '../../../../servicios/evento.service';

@Component({
  selector: 'az-lista-deudores',
  templateUrl: './lista-deudores.component.html',
  styleUrls: ['./lista-deudores.component.scss']
})
export class ListaDeudoresComponent implements OnInit {

  public eventos :Evento[];
  constructor(private _itemsService:EventoServices) { }

  ngOnInit() {
    this.getItems();
  }

  getItems(){
    this._itemsService.query({'search':' '}).subscribe(items => {
      this.eventos = items;
      }
     );
    }

}
