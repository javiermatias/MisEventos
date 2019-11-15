import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule } from '@angular/router';
import { FormsModule } from '@angular/forms';
import { DirectivesModule } from '../../theme/directives/directives.module';
import { PipesModule } from '../../theme/pipes/pipes.module';
import { DashboardComponent } from './dashboard.component';
import { TodoComponent } from './todo/todo.component';
import { ChatComponent } from './chat/chat.component';
import { FeedComponent } from './feed/feed.component';
import { DatamapComponent } from './datamap/datamap.component';
import { SocioChartComponent } from './socio-chart/socio-chart.component';
import { ChartsModule } from 'ng2-charts';
import 'chart.js/dist/Chart.js';
import { SharedModule } from '../../mis-eventos/componentesCompartidos/shared.module';
import { ProximosEventosComponent } from './proximos-eventos/proximos-eventos.component';

export const routes = [
  { path: '', component: DashboardComponent, pathMatch: 'full' }
];

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    ChartsModule,
    DirectivesModule,
    PipesModule,
    RouterModule.forChild(routes),
    SharedModule
  ],
  declarations: [
    DashboardComponent,
    TodoComponent,
    ChatComponent,
    FeedComponent,
    DatamapComponent,
    SocioChartComponent,
    ProximosEventosComponent
  ]
})

export class DashboardModule { }
