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
import { TagsCloudComponent } from './tags-cloud/tags-cloud.component';
import { TagCloudModule } from 'angular-tag-cloud-module';
import { SociosComponent } from './socios/socios.component';
import { EventosComponent } from './eventos/eventos.component'

export const routes = [
  { path: '', redirectTo: 'tags', pathMatch: 'full'},
  { path: 'tags', component: TagsCloudComponent, data: { breadcrumb: 'Nube de Etiquetas' } },
  { path: 'eventos', component: EventosComponent, data: { breadcrumb: 'Eventos' } },
  { path: 'socios', component: SociosComponent, data: { breadcrumb: 'Socios' } }
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
      TagCloudModule,
      RouterModule.forChild(routes)
  ],
  declarations: [
    TagsCloudComponent,
    SociosComponent,
    EventosComponent
  ]
})
export class ReporteModule { }
