import { Component, ViewEncapsulation, ViewChild, Output, EventEmitter, OnInit } from '@angular/core';
import { AppConfig } from '../../../app.config';
import 'style-loader!fullcalendar/dist/fullcalendar.min.css';
import { DetalleEventoServices, DetalleEvento} from '../../../servicios/evento.service'
import { EspacioServices, EspacioComun } from '../../../servicios/espacio.service';
import { CalendarioServices } from '../../../servicios/calendario.service';
import { FullCalendarComponent } from '@fullcalendar/angular';
import { EventInput } from '@fullcalendar/core';
import dayGridPlugin from '@fullcalendar/daygrid';
import timeGridPlugin from '@fullcalendar/timegrid';
import interactionPlugin from '@fullcalendar/interaction';
import listPlugin from '@fullcalendar/list';
import esLocale from '@fullcalendar/core/locales/es';
import { UserServices, Usuario } from '../../../servicios/users.service';

@Component({
  selector: 'app-calendar',
  encapsulation: ViewEncapsulation.None,
  templateUrl: './calendar.component.html'
})
export class CalendarComponent
              implements OnInit  {
  public config: any;
  event: any = {};
  public listaColores: any = {};
  public search = '';
  public fechaDesde: String;
  public fechaHasta: String;
  public espacios = new Array<EspacioComun>();
  public espacio = new EspacioComun(0, 'Todos', '', 0, 0);
  public esSocioEncargado:boolean=false;
  public usuario:Usuario;
  headerConfig = {
    left:  'today prev,next',
    center: 'title',
    right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
  }

  headerConfigSocio = {  
    right: 'listWeek'
  }
  lang  = {
    code: 'es',
    week: {
        dow: 1,
        doy: 4 // The week that contains Jan 4th is the first week of the year.
    },
    buttonText: {
      
        today: 'Hoy',
        month: 'Mes',
        week: 'Semana',
        day: 'Día',
        list: 'Agenda'
    },
    weekLabel: 'Sm',
    allDayHtml: 'A',
    eventLimitText: 'más',
    noEventsMessage: 'No hay eventos para mostrar'
};

  @Output() nuevoItemEvent: EventEmitter<string> = new EventEmitter();
  @ViewChild('calendar', {static: true}) calendarComponent: FullCalendarComponent; // the #calendar in the template

  calendarVisible = true;
  calendarPlugins = [dayGridPlugin, timeGridPlugin , interactionPlugin,dayGridPlugin,listPlugin];
  calendarWeekends = true;
  calendarEvents: EventInput[] = [];
  eventos: any[] = [];

  constructor(private _appConfig: AppConfig, private detalleEventServ: DetalleEventoServices,
    private _espacioService: EspacioServices,
    private _calendarioService: CalendarioServices,private _usersService:UserServices,) {
    this.config = this._appConfig.config;

  }

addEvent(event): void {
  this.calendarEvents.push(event);
}

handleEventClick(arg) {
  console.log(arg);
  this.event =  this.eventos.find(x => x.id.toString() === arg.event.id);
  jQuery('#show-event-modal').modal('show');
}

cambioEspacio(valor) {
  this.cargarEventos();
}

ngOnInit() {
  this.usuario = this._usersService.getCurrent();
    if(this.usuario.rol == 'SOCIO' || this.usuario.rol == 'ENCARGADO' ){
    this.esSocioEncargado = true;
    }


  this.fechaDesde = new Date('2017-08-01').toISOString();
  this.fechaHasta = new Date('2020-08-01').toISOString();
  this.cargarEventos();
  this.getEspacios();
}

getEspacios() {
    this._espacioService.query({}).subscribe(items => {
      this.espacios = items;
      this.espacios.push(new EspacioComun(0, 'Todos', '', 0, 0))
    });
}

nuevoItem() {
  this.nuevoItemEvent.emit('complete');
}

getRndColor() {
  const letters = '0123456789ABCDEF';
  let color = '#';
  for (let i = 0; i < 6; i++) {
    color += letters[Math.floor(Math.random() * 16)];
  }
  return color;
}

getEventoColor(idEvento: number) {
  if (this.listaColores[idEvento]) {
      return this.listaColores[idEvento];
  }else {
    this.listaColores[idEvento] = this.getRndColor();
    return  this.listaColores[idEvento];
  }
}

cargarEventos() {
  this._calendarioService.query({
    'fechaDesde': this.fechaDesde,
    'fechaHasta': this.fechaHasta,
    'idEspacio': this.espacio.id
  }).subscribe(items => {

    this.eventos = [];
    this.calendarEvents = [];

    for (let i = 0; i < items.length; i++) {
      const color = this.getEventoColor(items[i].idEvento);

      const itemAux = {
        title: items[i].nombre,
        start: items[i].fechaDesde,
        end: items[i].fechaHasta,
        allDay: false,
        backgroundColor: color,
        textColor: this.config.colors.default,
        id: items[i].id,
        idEvento: items[i].idEvento,
        dia: items[i].dia,
        descripcion:items[i].descripcion,
        encargado: items[i].encargado,
        aula: items[i].aula
      }
      this.eventos = this.eventos.concat(itemAux);
      this.calendarEvents = this.calendarEvents.concat(itemAux);
    }
  });

}

  addDays(date, days) {
    const result = new Date(date);
    result.setDate(result.getDate() + days);

    const calendarApi = this.calendarComponent.getApi();
    calendarApi.gotoDate(result);
    return result;
  }

}
