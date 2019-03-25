import { Routes, RouterModule } from '@angular/router';
import { ModuleWithProviders } from '@angular/core';
import { SesionComponent } from './sesion.component';
import { LoginComponent } from '../login/login.component';
import { RolesUsuarioComponent } from '../rol/rolesUsuario.component';


export const routes: Routes = [
    {
        path: '',
        component: SesionComponent,
        children:[
            { path:'', redirectTo:'login', pathMatch:'full' },
            { path: 'sesion',component: SesionComponent, data: { breadcrumb: 'Sesión' }  }, // TODO: este deberiamos borrarlo?
            { path: 'login',component: LoginComponent, data: { breadcrumb: 'Login' }  },
            { path: 'seleccionarRol', component: RolesUsuarioComponent, data: { breadcrumb: 'Selecionar rol'}},
        ]
    }
];

export const routing: ModuleWithProviders = RouterModule.forChild(routes);