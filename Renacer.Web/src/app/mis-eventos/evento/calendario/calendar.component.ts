import { Component, ViewEncapsulation, Output, EventEmitter,OnInit } from '@angular/core';
import { AppConfig } from "../../../app.config";
import 'style-loader!fullcalendar/dist/fullcalendar.min.css';
import {DetalleEventoServices,DetalleEvento} from "../../../servicios/evento.service"
import { EspacioServices, EspacioComun } from '../../../servicios/espacio.service';
import { CalendarioServices } from '../../../servicios/calendario.service';

@Component({
  selector: 'az-calendar',
  encapsulation: ViewEncapsulation.None,
  templateUrl: './calendar.component.html'
})
export class CalendarComponent {
  public config:any;
  public configFn:any;
  calendarOptions: any;
  $calendar: any;
  dragOptions: Object = { zIndex: 999, revert: true, revertDuration: 0 };
  event: any = {};
  createEvent: any;
  public listaColores:any = {};

  public search:string ="";
  public fechaDesde:Date = new Date();
  public fechaHasta:Date = new Date();
  public espacios = new Array<EspacioComun>();
  public _espacio = new EspacioComun(0,"","",0,0);
  @Output() nuevoItemEvent:EventEmitter<string> = new EventEmitter();

  nuevoItem() {
    this.nuevoItemEvent.emit('complete');
  }

  getRndColor(){
    var letters = '0123456789ABCDEF';
    var color = '#';
    for (var i = 0; i < 6; i++) {
      color += letters[Math.floor(Math.random() * 16)];
    }
    return color;
  }

  getEventoColor(idEvento:number){
    if(this.listaColores[idEvento]){
        return this.listaColores[idEvento];
    }else{
      this.listaColores[idEvento] = this.getRndColor();
      return  this.listaColores[idEvento];
    }
  }

  CargarEventos(){
    this.detalleEventServ.query({
      "fechaDesde":this.fechaDesde,
      "fechaHasta":this.fechaHasta
    },(items) => {
      console.log(items);
      this.calendarOptions.events = [];

      for(var i = 0; i < items.length;i++){

        var color = this.getEventoColor(items[i].idEvento); 

        var itemAux = {
          title: items[i].nombre,
          start: items[i].fechaDesde,
          end: items[i].fechaHasta,
          allDay: false,
          backgroundColor: color,
          textColor: this.config.colors.default,
          id:items[i].id,
          idEvento:items[i].idEvento,
          dia:items[i].dia,
          encargado: items[i].descripcion,
          aula:items[i].espacio.nombre
        }
        this.calendarOptions.events.push(itemAux);
      }

      this.$calendar = jQuery('#calendar');
      this.$calendar.fullCalendar(this.calendarOptions);
    });
  }
  addDays(date, days) {
    var result = new Date(date);
    result.setDate(result.getDate() + days);
    return result;
  }

  constructor(private _appConfig:AppConfig,private detalleEventServ:DetalleEventoServices, 
    private _espacioService:EspacioServices,
    private _calendarioService:CalendarioServices ) {
    this.config = this._appConfig.config;
    this.configFn = this._appConfig;

    let date = new Date();
    let d = date.getDate();
    let m = date.getMonth();
    let y = date.getFullYear();

    this.calendarOptions = {
      header: {
        left: 'today prev,next',
        center: 'title',
        right: 'month,agendaWeek,agendaDay,listMonth'
      },
      defaultView:"agendaWeek",
      minTime: "07:00:00",
      maxTime: "23:00:00",
      allDaySlot: false,
      events: [ ],
      eventColor: this.config.colors.info,
      selectable: true,
      selectHelper: true,
      select: (start, end, allDay): void => {
        this.createEvent = () => {
          let title = this.event.title;
          let startEvent = this.event.start;
          let endEvent = this.event.end;
          if (title && startEvent && endEvent) {
            this.$calendar.fullCalendar('renderEvent',
            {
              title: title,
              start: startEvent,
              end: endEvent,
              allDay: this.event.allDay,
              backgroundColor: this.config.colors.success,
              textColor: this.config.colors.default
            },
            true // make the event "stick"
          );
        }
        this.$calendar.fullCalendar('unselect');
       // jQuery('#create-event-modal').modal('hide');
      };

     // jQuery('#create-event-modal').modal('show');
    },
    eventClick: (event): void => {
      this.event = event;
      jQuery('#show-event-modal').modal('show');
    },
    editable: true,
    droppable: true,
    drop: (dateItem, event): void => { // this function is called when something is dropped
      // retrieve the dropped element's stored Event Object
      let originalEventObject = {
        // use the element's text as the event title
        title: jQuery.trim(jQuery(event.target).text())
      };

      // we need to copy it, so that multiple events don't have a reference to the same object
      let copiedEventObject = jQuery.extend({}, originalEventObject);

      // assign it the date that was reported
      copiedEventObject.start = dateItem;
      copiedEventObject.allDay = !dateItem.hasTime();

      let $categoryClass = jQuery(event.target).data('event-class');
      if ($categoryClass) { copiedEventObject.className = [$categoryClass]; }

      // render the event on the calendar
      // the last `true` argument determines if
      // the event 'sticks'
      // http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
      this.$calendar.fullCalendar('renderEvent', copiedEventObject, true);

      jQuery(event.target).remove();

    },
    dayRender: function (date, cell) {
      let today = new Date().toDateString();
      let compareDate = date.toDate().toDateString();
      if (today == compareDate) {
        cell.css("background-color", "#ccc");
      }
    },
    lang: 'es',
    locale: 'es'
  };
};

addEvent(event): void {
  this.calendarOptions.events.push(event);
};

ngOnInit(): void {
  this.fechaDesde = new Date('2017-08-01');
  this.fechaHasta = new Date('2020-08-01');
  //this.getEspacios();
  //this.CargarEventos();
  this.cargarEventos();
  //this.cargarCalendario();


  // jQuery('.draggable').draggable(this.dragOptions);

}

getEspacios(){
  this._espacioService.query({},(items:EspacioComun[]) => {
    this.espacios = items;
  }
);
}


/* cambioAula(){
  this.cargarEventosxAula(this._espacio.id);
  console.log(this._espacio.id);
} */

cargarCalendario(){
  this._calendarioService.query({
    "fechaDesde":this.fechaDesde,
    "fechaHasta":this.fechaHasta
  },(items) => {
    console.log(items);
    
  });
}

cargarEventos(){
  this._calendarioService.query({
    "fechaDesde":this.fechaDesde,
    "fechaHasta":this.fechaHasta
  },(items) => {
    console.log(items);
    this.calendarOptions.events = [];

    for(var i = 0; i < items.length;i++){

      var color = this.getEventoColor(items[i].idEvento); 
      let titulo =  items[i].nombre + "-" +  items[i].aula;
      var itemAux = {
        title: titulo,
        start: items[i].fechaDesde,
        end: items[i].fechaHasta,
        id:items[i].id,
        idEvento:items[i].idEvento,
        encargado:items[i].encargado,
        aula:items[i].aula,
        descripcion:items[i].descripcion,
        dia:items[i].dia,
        allDay: false,
        backgroundColor: color,
        textColor: this.config.colors.default,        
      }
      this.calendarOptions.events.push(itemAux);
    }

    this.$calendar = jQuery('#calendar');
    this.$calendar.fullCalendar(this.calendarOptions);
  });
}

}
