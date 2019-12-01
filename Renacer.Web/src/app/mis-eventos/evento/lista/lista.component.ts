import { Component, OnInit } from '@angular/core';
import { EventoServices ,Evento} from '../../../servicios/evento.service';

@Component({
  selector: 'lista-eventos',
  templateUrl: './lista.component.html',
  styleUrls: ['./lista.component.scss']
})
export class ListaComponent implements OnInit {
  public eventos :any[];
  public eventosOriginal :any[];
  searchText = '';
  showDetail = false;

  constructor(private _itemsService: EventoServices) { }

  ngOnInit() {
   this.getItems();
  }

  getItems(){
  this._itemsService.query({'search':' '}).subscribe(items => {
    this.eventos = items;
    this.eventosOriginal=items;
  }
   );
  }


  buscar(){
    this.eventos=this.eventosOriginal;
    if(this.searchText != ''){
      this.searchText = this.searchText.toLowerCase();
      this.eventos = this.eventos.filter((item: Evento) => {
        return item.nombre.toLowerCase().indexOf(this.searchText) >= 0;
       });

    }
  
  }

}
