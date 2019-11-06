import { Routes, RouterModule } from '@angular/router';
import { ModuleWithProviders } from '@angular/core';
import { SesionComponent } from './sesion.component';
import { LoginComponent } from '../../mis-eventos/usuarios/login/login.component';
import { RolesUsuarioComponent } from '../rol/rolesUsuario.component';
import { CambioContraseniaComponent } from '../../mis-eventos/usuarios/cambio-contrasenia/cambio-contrasenia.component';
//import { CambioContraseñaComponent } from '../../mis-eventos/usuarios/cambio-contraseña/cambio-contraseña.component';


export const routes: Routes = [
    {
        path: '',
        component: SesionComponent,
        children:[
            { path:'', redirectTo:'login', pathMatch:'full' },
            { path: 'sesion',component: SesionComponent, data: { breadcrumb: 'Sesión' }  }, // TODO: este deberiamos borrarlo?
            { path: 'login',component: LoginComponent, data: { breadcrumb: 'Login' }  },
            //{ path: 'cambioContrasena', component: CambioContraseniaComponent, data: { breadcrumb: 'Cambiar Contraseña'}},
        ]
    }
];

export const routing: ModuleWithProviders = RouterModule.forChild(routes);