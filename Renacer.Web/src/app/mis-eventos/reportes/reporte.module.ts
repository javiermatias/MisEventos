import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule } from '@angular/router';
import { FormsModule } from '@angular/forms';
import { DirectivesModule } from '../../theme/directives/directives.module';
import { NguiAutoCompleteModule  } from '@ngui/auto-complete';
import { DataTableModule } from 'angular-6-datatable';
import { PipesModule } from '../../theme/pipes/pipes.module';
import { SharedModule } from '../componentesCompartidos/shared.module';
import { TagsCloudComponent } from './tags-cloud/tags-cloud.component';
import { TagCloudModule } from 'angular-tag-cloud-module';
import { SociosComponent } from './socios/socios.component';
import { EventosComponent } from './eventos/eventos.component'
import { ReporteComponent } from './reporte.component';
import { TimeLineComponent } from './eventos/time-line/time-line.component';
import { RankingComponent } from './eventos/ranking/ranking.component';
import { NgSelectModule } from '@ng-select/ng-select';
import { DeudoresCuotaComponent } from './deudores-cuota/deudores-cuota.component';
import { EventoChartComponent } from './eventos/evento-chart/evento-chart.component';
import { ChartsModule } from 'ng4-charts';
import 'chart.js/dist/Chart.js';
import { IngresosMonetariosComponent } from './ingresos-monetarios/ingresos-monetarios.component';
import { AsistenciasComponent } from './eventos/asistencias/asistencias.component';
import { ListaDeudoresComponent } from './deudores-cuota/lista-deudores/lista-deudores.component';
import { SocioChartComponent } from './socios/socio-chart/socio-chart.component';
import { IngresosComponent } from './ingresos/ingresos.component';
import { GraficoTortaComponent } from './graficos-compartidos/grafico-torta/grafico-torta.component';

import { GoogleChartsModule } from 'angular-google-charts';


export const routes = [
  { path: '', redirectTo: 'tags', pathMatch: 'full'},
  { path: 'tags', component: TagsCloudComponent, data: { breadcrumb: 'Nube de Etiquetas' } },//
  { path: 'eventos', component: EventosComponent, data: { breadcrumb: 'Eventos' } },
  { path: 'socios', component: SociosComponent, data: { breadcrumb: 'Socios' } },//
  { path: 'time-line', component: TimeLineComponent, data: { breadcrumb: 'Cronograma' } },
  { path: 'ranking', component: RankingComponent, data: { breadcrumb: 'Ranking' } },//
  { path: 'ingresos', component: IngresosComponent, data: { breadcrumb: 'Ingresos' } },
  { path: 'asistencias', component: AsistenciasComponent, data: { breadcrumb: 'Asistencias' } },
  { path: 'deudores', component: DeudoresCuotaComponent, data: { breadcrumb: 'Deudores' } },
  { path: 'crecimiento-socios', component: SocioChartComponent, data: { breadcrumb: 'Socios' } },
  { path: 'ingresos12', component: IngresosMonetariosComponent, data: { breadcrumb: 'Socios' } },
];

@NgModule({
  imports: [
      SharedModule,
      CommonModule,
      DirectivesModule,
      PipesModule,
      FormsModule,
      NgSelectModule,
      DataTableModule,
      NguiAutoCompleteModule,
      TagCloudModule,
      ChartsModule,
      GoogleChartsModule,
      RouterModule.forChild(routes)
  ],
  declarations: [
    TagsCloudComponent,
    SociosComponent,
    ReporteComponent,
    EventosComponent,
    TimeLineComponent,
    RankingComponent,
    DeudoresCuotaComponent,
    EventoChartComponent,
    IngresosMonetariosComponent,
    AsistenciasComponent,
    ListaDeudoresComponent,
    SocioChartComponent,
    IngresosComponent,
    GraficoTortaComponent
  ]
})
export class ReporteModule { }
