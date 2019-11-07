import { Component, OnInit } from '@angular/core';
import { Evento, EventoServices } from '../../../../servicios/evento.service';
import { DatePipe } from '@angular/common';

@Component({
  selector: 'az-lista-inscripciones',
  templateUrl: './lista-inscripciones.component.html',
  styleUrls: ['./lista-inscripciones.component.scss']
})
export class ListaInscripcionesComponent implements OnInit {

  public fechaHoy:string;
  public eventos:Evento[];
  searchText = '';
  showDetail = false;

  constructor(private _itemsService:EventoServices,private datePipe: DatePipe) {


    this.fechaHoy = this.datePipe.transform(new Date(), 'yyyy-MM-dd');
   }

  ngOnInit() {
    this.getItems();
  }

  getItems(){

    this._itemsService.query({'search':' '}).subscribe(items => {      
      
      this.eventos = items.filter((item: Evento) => {
        return this.datePipe.transform(item.fechaDesdeInscripcion, 'yyyy-MM-dd') <= this.fechaHoy
        && this.datePipe.transform(item.fechaHastaInscripcion, 'yyyy-MM-dd') >= this.fechaHoy && item.estado != "Cancelado";
    });
       }
     );

  }

}
