import { Component, OnInit, Input, ViewChild, ElementRef } from '@angular/core';
import { Angular2CsvComponent } from 'angular2-csv';

declare const require: any;
const jsPDF = require('jspdf');
require('jspdf-autotable');


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

  @ViewChild('content', {static: false}) content: ElementRef;

  optionsCsv: any;

  constructor() { }

  ngOnInit() {
  }

  public downloadPDF() {
    const doc = new jsPDF();
 
    const specialElementHandlers = {
       '#editor': function (element, renderer) {
        return true;
        }
    };
 
    const content = this.content.nativeElement;
 
    doc.fromHTML(content.innerHTML, 15, 15, {
       width: 190,
      'elementHandlers': specialElementHandlers
    });
 
    doc.save('test.pdf');
 }



  downloadCsv() {

    this.optionsCsv = {
      fieldSeparator: ',',
      quoteStrings: '"',
      decimalseparator: '.',
      showLabels: false,
      headers: this.config.columnas.map(x => (x.title)),
      showTitle: false,
      title: '',
      useBom: false,
      removeNewLines: true,
      keys: this.config.columnas.map(x => ( x.name ))
    };

    setTimeout(() => { this.csvComponent.onDownload(); }, 0);
  }

}
