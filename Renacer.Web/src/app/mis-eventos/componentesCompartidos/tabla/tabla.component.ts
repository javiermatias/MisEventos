import { Component, OnInit, Input, ViewChild } from '@angular/core';
import { Angular2CsvComponent } from 'angular2-csv';

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

  constructor() { }

  ngOnInit() {
  }



  downloadCsv() {

    this.optionsCsv = {
      fieldSeparator: ',',
      quoteStrings: '"',
      decimalseparator: '.',
      showLabels: false,
      headers: [],
      showTitle: true,
      title: 'asfasf',
      useBom: false,
      removeNewLines: true,
      keys: this.config.columnas.map(x => ( x.name ))
    };

    setTimeout(() => { this.csvComponent.onDownload(); }, 0);
  }

}
