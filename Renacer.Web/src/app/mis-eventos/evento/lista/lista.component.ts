import { Component, OnInit } from '@angular/core';
import { EventoServices ,Evento} from '../../../servicios/evento.service';

@Component({
  selector: 'lista-eventos',
  templateUrl: './lista.component.html',
  styleUrls: ['./lista.component.scss']
})
export class ListaComponent implements OnInit {
  public eventos:Evento[];

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
