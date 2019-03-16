import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule } from '@angular/router';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { LoginComponent } from './login.component';
import { DataTableModule } from "angular2-datatable";
import { RolesUsuarioComponent } from './rolesUsuario.component';
export const routes = [
  { path: '', component: LoginComponent, pathMatch: 'full' }
];

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    ReactiveFormsModule,DataTableModule,
    RouterModule.forChild(routes),
  ],
  declarations: [LoginComponent, RolesUsuarioComponent]
})

export class LoginModule { }
