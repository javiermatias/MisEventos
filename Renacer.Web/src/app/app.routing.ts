import { Routes, RouterModule, PreloadAllModules } from '@angular/router';
import { ModuleWithProviders } from '@angular/core';
import { ErrorComponent } from './pages/error/error.component';
import { AccessGuard } from './resources/accessGuard.service';

export const routes: Routes = [
  { path: '', redirectTo: 'sesion', pathMatch: 'full' },
  { path: 'pages', loadChildren: 'app/pages/pages.module#PagesModule', data: { requiereRol: true }, canActivate: [AccessGuard] }, // el canActivate: [AccessGuard] indica que debe hacer este chequeo antes de entrar al módulo
  { path: 'sesion', loadChildren: 'app/pages/sesion/sesion.module#SesionModule' },
  { path: 'register', loadChildren: 'app/pages/register/register.module#RegisterModule' },/* 
  { path: 'eventos', loadChildren: 'app/mis-eventos/peventos.module#PeventosModule' }, */


  // dejar siempre al último esta ruta. Se utiliza cuando no matchea ninguna de las rutas anteriores
  { path: '**', component: ErrorComponent }
];

export const routing: ModuleWithProviders = RouterModule.forRoot(routes, {
  preloadingStrategy: PreloadAllModules,
  useHash: true
});
