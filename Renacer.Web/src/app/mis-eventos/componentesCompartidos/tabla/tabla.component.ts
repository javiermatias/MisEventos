import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'az-tabla',
  templateUrl: './tabla.component.html',
  styleUrls: ['./tabla.component.scss']
})
export class TablaComponent implements OnInit {

  @Input() data: any[];
  @Input() config: any;
  @Input() name: string;
  optionsCsv: any;

  constructor() { }

  ngOnInit() {
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
      keys: this.config.columnas.map(x => ( x.name ));
    };
  }

}
