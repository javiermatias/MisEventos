import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule } from '@angular/router';
import { FormsModule }   from '@angular/forms';
import { DirectivesModule } from '../../theme/directives/directives.module';
import { NguiAutoCompleteModule  } from '@ngui/auto-complete';
import { DataTableModule } from "angular2-datatable";
import { ToastrModule } from 'ngx-toastr';
import { PipesModule } from '../../theme/pipes/pipes.module';
import { SharedModule } from '../shared/shared.module';
import { DetalleEventoComponent } from './detalle-evento.component';
import { EventoComponent } from './evento.component';
import { CalendarComponent } from './calendar.component';


export const routes = [
  { path: '', redirectTo: 'calendario', pathMatch: 'full'},
  { path: 'calendario', component: CalendarComponent, data: { breadcrumb: 'Calendario' } },
  { path: ':id', component: EventoComponent, data: { breadcrumb: 'Evento' } },
  { path: ':idEvento/detalle/:idDetalle', component: DetalleEventoComponent, data: { breadcrumb: 'Detalle' } }
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
      RouterModule.forChild(routes)
  ],
  declarations: [
    DetalleEventoComponent,
    EventoComponent,
    CalendarComponent
  ]
})
export class EventoModule { }
