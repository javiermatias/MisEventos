import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule } from '@angular/router';
import { FormsModule } from '@angular/forms';
import { DirectivesModule } from '../../theme/directives/directives.module';
import { NguiAutoCompleteModule  } from '@ngui/auto-complete';
import { DataTableModule } from 'angular-6-datatable';
import { PipesModule } from '../../theme/pipes/pipes.module';
import { SharedModule } from '../componentesCompartidos/shared.module';
import { DetalleEventoComponent } from './detalle-evento.component';
import { EventoComponent } from './evento.component';
import { CalendarComponent } from './calendario/calendar.component';
import { ListaComponent } from './lista/lista.component';
import { EventoWizardComponent } from './evento-wizard/evento-wizard.component';
import { ReactiveFormsModule } from '@angular/forms';
import { InscripcionComponent } from './inscripcion/inscripcion.component';
import { EventoDetalleComponent } from './evento-detalle/evento-detalle.component';
import { FbkComponent } from './fbk/fbk.component';
import { FullCalendarModule } from '@fullcalendar/angular';
import { ListaInscripcionesComponent } from './inscripcion/lista-inscripciones/lista-inscripciones.component';// for FullCalendar!
import { DetalleAsistenciaComponent } from './detalle-asistencia/detalle-asistencia.component';




// import social buttons module//import { JwSocialButtonsModule } from 'jw-angular-social-buttons';
//import { JwSocialButtonsModule } from 'jw-angular-social-buttons';

export const routes = [
  
  { path: 'calendario', component: CalendarComponent, data: { breadcrumb: '' } },
  { path: 'evento-wizard', component: EventoWizardComponent, data: { breadcrumb: '' } },
  { path: 'inscripcion/:id', component: InscripcionComponent, data: { breadcrumb: '' } },
  { path: 'lista', component: ListaComponent, data: { breadcrumb: 'Lista' } },
  { path: 'lista-inscripciones', component: ListaInscripcionesComponent, data: { breadcrumb: 'Evento' } },
  { path: ':idEvento/detalle/:idDetalle', component: DetalleEventoComponent, data: { breadcrumb: 'Detalle' }},
  { path: 'detalleEvento/:id', component: EventoDetalleComponent, data: { breadcrumb: 'Detalle Evento' }},
    { path: '', redirectTo: 'lista', pathMatch: 'full'},
];

@NgModule({
  imports: [
      SharedModule,
      CommonModule,
      DirectivesModule,
      PipesModule,
      FormsModule,
      DataTableModule,
      NguiAutoCompleteModule,
      ReactiveFormsModule,
      
      // MultiselectDropdownModule,
      //JwSocialButtonsModule,
      FullCalendarModule,
      RouterModule.forChild(routes)
  ],
  declarations: [
    DetalleEventoComponent,
    EventoComponent,
    CalendarComponent,
    ListaComponent,
    EventoWizardComponent,
    InscripcionComponent,
    EventoDetalleComponent,
    FbkComponent,
    ListaInscripcionesComponent,
    DetalleAsistenciaComponent
    
  ]
})
export class EventoModule { }
