import { Component, OnInit, Input, ViewChild } from '@angular/core';
import { Angular2CsvComponent } from 'angular2-csv';
import { CsvServices, RequestCsv } from '../../../servicios/csv.service';

@Component({
  selector: 'az-tabla',
  templateUrl: './tabla.component.html',
  styleUrls: ['./tabla.component.scss']
})
export class TablaComponent implements OnInit {

  @Input() data: any[];
  @Input() config: any;
  @Input() name: string;
  @ViewChild(Angular2CsvComponent, {static: false}) csvComponent: Angular2CsvComponent;
  optionsCsv: any;

  constructor(private csvServ: CsvServices) { }

  ngOnInit() {
  }

  downloadCsvWithServices() {
    const req = new RequestCsv(this.config.columnas.map(x => x.name), this.data, this.name);
    this.csvServ.request.next(req);
  }

}
