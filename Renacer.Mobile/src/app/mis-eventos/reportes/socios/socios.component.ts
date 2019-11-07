import { Component, OnInit } from '@angular/core';
import {ReporteServices, FiltroReporte} from '../../../servicios/reporte.service';
import {Socio} from '../../../servicios/socio.service';
import { CsvServices, RequestCsv } from '../../../servicios/csv.service';

@Component({
  selector: 'app-reporte-socios',
  templateUrl: './socios.component.html',
  styleUrls: ['./socios.component.scss']
})
export class SociosComponent implements OnInit {

  public filter: FiltroReporte = new FiltroReporte();
  public items: Socio[];
  searchText = '';

    constructor(private itemsServ: ReporteServices, private csvServ: CsvServices) { }

    ngOnInit() {
      this.getItems();
    }

    getItems() {
      this.itemsServ.socios(this.filter).subscribe(items => {
        this.items = items;
      })
    }

    downloadCsvWithServices() {
      const req = new RequestCsv(['nombre', 'apellido', 'nroDocumento', 'fechaCreacion'], this.items, 'listado_socios');
      this.csvServ.request.next(req);
    }
}
