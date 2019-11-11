import { Component, OnInit, Input, ViewChild, ElementRef } from '@angular/core';
import { Angular2CsvComponent } from 'angular2-csv';
import { CsvServices, RequestCsv } from '../../../servicios/csv.service';

declare const require: any;
const jsPDF = require('jspdf');
require('jspdf-autotable');


@Component({
  selector: 'app-tabla',
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
  searchText = '';

  constructor(private csvServ: CsvServices) { }

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

  downloadCsvWithServices() {
    const req = new RequestCsv(this.config.columnas.map(x => x.name), this.data, this.name);
    this.csvServ.request.next(req);
  }

}