import { Component, OnInit } from '@angular/core';
import { EventoServices } from '../../../../servicios/evento.service';

@Component({
  selector: 'az-time-line',
  templateUrl: './time-line.component.html',
  styleUrls: ['./time-line.component.scss']
})
export class TimeLineComponent implements OnInit {

  public eventos :any[];
  constructor(private _itemsService:EventoServices) { }

  ngOnInit() {
    this.getItems();
  }
  getItems(){
    this._itemsService.query({'search':' '}).subscribe(items => {
      this.eventos = items;
      console.log(this.eventos);
      }
     );
    }
}
