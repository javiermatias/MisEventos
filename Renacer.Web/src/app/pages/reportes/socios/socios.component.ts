import { Component, OnInit } from '@angular/core';
import {ReporteServices,FiltroReporte} from '../../../resources/reporte.service';
import {Socio} from '../../../resources/socio.service';

@Component({
  selector: 'reporte-socios',
  templateUrl: './socios.component.html',
  styleUrls: ['./socios.component.scss']
})
export class SociosComponent implements OnInit {

  public filter:FiltroReporte = new FiltroReporte();
  public items:Socio[];
  
    constructor(private itemsServ:ReporteServices) { }
  
    ngOnInit() {
      this.getItems();
    }
  
    getItems(){
      this.itemsServ.socios(this.filter,(items:Socio[]) => {
        this.items = items;
      })
    }
}
