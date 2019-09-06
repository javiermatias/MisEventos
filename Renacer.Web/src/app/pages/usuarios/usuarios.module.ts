import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule } from '@angular/router';
import { FormsModule } from '@angular/forms';
import { DirectivesModule } from '../../theme/directives/directives.module';
import { NguiAutoCompleteModule } from '@ngui/auto-complete';
import { DataTableModule } from "angular2-datatable";
import { PipesModule } from '../../theme/pipes/pipes.module';
import { SharedModule } from '../../mis-eventos/componentesCompartidos/shared.module';
import { ProfileComponent } from './profile/profile.component';
import { UsuarioComponent } from './usuarios.component';

export const routes = [
  { path: 'usuarios', component: UsuarioComponent, data: { breadcrumb: 'Usuarios' } },
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
  declarations: [ProfileComponent, UsuarioComponent]
})
export class UsuariosModule { } 
