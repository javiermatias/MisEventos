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
import { ProfileComponent } from './profile/profile.component';
import { ListaComponent } from './lista/lista.component';

export const routes = [
  { path: '', redirectTo: 'lista', pathMatch: 'full'},
  { path: 'lista', component: ListaComponent, data: { breadcrumb: 'Lista' } },
  { path: 'perfil', component: ProfileComponent, data: { breadcrumb: 'Perfil' } },
];

@NgModule({
  imports: [
    CommonModule,
    SharedModule,
    DirectivesModule,
    PipesModule,
    FormsModule,
    DataTableModule,
    NguiAutoCompleteModule,
    RouterModule.forChild(routes)
  ],
  declarations: [ProfileComponent, ListaComponent]
})
export class UsuariosModule { }
