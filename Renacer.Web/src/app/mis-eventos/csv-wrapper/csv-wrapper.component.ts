import { Component, OnInit, ViewChild } from '@angular/core';
import { CsvServices, RequestCsv } from '../../servicios/csv.service';
import { Angular2CsvComponent } from 'angular2-csv';
import { Title } from '@angular/platform-browser';

@Component({
  selector: 'app-csv-wrapper',
  templateUrl: './csv-wrapper.component.html',
  styleUrls: ['./csv-wrapper.component.scss']
})
export class CsvWrapperComponent implements OnInit {

  @ViewChild(Angular2CsvComponent, {static: false}) csvComponent: Angular2CsvComponent;
  optionsCsv: any;
  title: string;
  data: any[];

  constructor(private csvServ: CsvServices) {
    this.csvServ.request.subscribe((req: RequestCsv ) => {
      if (req != null) { this.downloadCsv(req); }
    })

   }

  ngOnInit() {
  }

  downloadCsv(req: RequestCsv) {
    this.optionsCsv = {
      fieldSeparator: ',',
      quoteStrings: '"',
      decimalseparator: '.',
      showLabels: false,
      headers: [],
      showTitle: false,
      title: '',
      useBom: false,
      removeNewLines: true,
      keys: req.columnas
    };

    this.data = req.data;
    this.title = req.title;

    setTimeout(() => { this.csvComponent.onDownload(); }, 0);
  }


}
