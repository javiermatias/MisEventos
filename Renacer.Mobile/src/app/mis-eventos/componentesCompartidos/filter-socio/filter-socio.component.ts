import { Component, OnInit, Input } from '@angular/core';
import {FiltroReporte} from '../../../servicios/reporte.service';

@Component({
  selector: 'filter-socio',
  templateUrl: './filter-socio.component.html',
  styleUrls: ['./filter-socio.component.scss']
})
export class FilterSocioComponent implements OnInit {

  @Input() filter: FiltroReporte;
  constructor() { }

  ngOnInit() {
  }

}
