import { Component, OnInit } from '@angular/core';
import { EventoServices, Evento } from '../../../servicios/evento.service';
import { DatePipe } from '@angular/common';

@Component({
  selector: 'az-socio-inscripcion',
  templateUrl: './socio-inscripcion.component.html',
  styleUrls: ['./socio-inscripcion.component.scss']
})
export class SocioInscripcionComponent implements OnInit {
  public fechaDesde:string;
  public fechaHasta:string;

  public eventos :Evento[];
  public eventosOriginal :Evento[];
  constructor(private _itemsService:EventoServices,private datePipe: DatePipe) {
    this.fechaDesde = this.datePipe.transform(new Date(), 'yyyy-MM-dd');
    this.fechaHasta = this.datePipe.transform(new Date(new Date().getFullYear(),11,30 ), 'yyyy-MM-dd');
   }

  ngOnInit() {
    this.getItems();
  }


  getItems(){
    this._itemsService.query({'search':' '}).subscribe(items => {
      items.sort(function(a, b) {
        let c = new Date(a.fechaDesde);
        let d = new Date(b.fechaDesde);
        return d>c ? -1 : d<c ? 1 : 0;
    });
    this.eventosOriginal=items;
    //console.log(this.eventosOriginal);
    this.eventos = items.filter((item: Evento) => {
      return this.datePipe.transform(item.fechaDesde, 'yyyy-MM-dd') >= this.fechaDesde;
  });
     
      }
     );
    }

}
