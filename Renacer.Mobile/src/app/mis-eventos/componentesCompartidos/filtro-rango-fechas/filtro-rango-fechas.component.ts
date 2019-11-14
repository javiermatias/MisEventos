import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';
import {IAngularMyDpOptions, IMyDateModel, IMyRangeDateSelection} from 'angular-mydatepicker';

@Component({
  selector: 'app-filtro-rango-fechas',
  template: `
  <div class='input-box-container'>
  <label style="padding:10px;">Rango de fechas</label>
  <input class='input-box' placeholder='Selecciona una fecha'
    angular-mydatepicker name='mydate'
    (click)='dp.toggleCalendar()'
    (rangeDateSelection)="onInternalRangeDateSelection($event)"
    [(ngModel)]='model' [options]='myDpOptions'
    #dp='angular-mydatepicker'/>
</div> `
})
export class FiltroRangoDeFechasComponent implements OnInit {

  @Input() firstDate: Date;
  @Input() lastDate: Date;
  fechaInicio: Date;
  fechaFin: Date;

  model: IMyDateModel;
  @Output() onRangeDateSelection = new EventEmitter<any>();
  locale = 'es'
  myDpOptions: IAngularMyDpOptions = {
    dateRange: true,
    dateFormat: 'dd/mm/yyyy',
    firstDayOfWeek: 'mo',
    sunHighlight: true,
    markCurrentDay: true,
    alignSelectorRight: true,
    openSelectorTopOfInput: false,
    minYear: 2017,
    maxYear: new Date().getFullYear() + 1,
    showSelectorArrow: true,
    monthSelector: true,
    yearSelector: true,
    satHighlight: false,
    highlightDates: [],
    disableDates: [],
    disableHeaderButtons: true,
    showWeekNumbers: false,
    // other options are here...
  };

  constructor() {
  }

  ngOnInit() {

    const end: Date = this.firstDate ? this.firstDate :  new Date();
    const begin: Date = this.lastDate ? this.lastDate :  new Date(new Date().getFullYear() - 1, 0, 1);

    this.model = {
          isRange: true,
          singleDate: null,
          dateRange: {
            beginDate: {
              year: begin.getFullYear(), month: begin.getMonth() + 1, day: begin.getDate()
            },
            endDate: {
              year: end.getFullYear(), month: end.getMonth() + 1, day: end.getDate()
            }
          }
        };
  }

  onInternalRangeDateSelection(event: IMyRangeDateSelection): void {
    if (event.isBegin) {
      this.fechaInicio = event.jsDate;
    } else {
      this.fechaFin = event.jsDate;
      const rango = {
        'inicio':  this.fechaInicio,
        'fin':  this.fechaFin
       }
      this.onRangeDateSelection.emit(rango);
    }
   }

}
