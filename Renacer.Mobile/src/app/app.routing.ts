import { Routes, RouterModule, PreloadAllModules } from '@angular/router';
import { ModuleWithProviders } from '@angular/core';
import { ErrorComponent } from './pages/error/error.component';
import { AccessGuard } from './servicios/accessGuard.service';
import { PagesModule } from './pages/pages.module';
import { SesionModule } from './pages/sesion/sesion.module';
import { RegisterModule } from './pages/register/register.module';

 const routes: Routes = [
  { path: '', redirectTo: 'sesion', pathMatch: 'full' },
  { path: 'pages', loadChildren: './pages/pages.module#PagesModule' },
  { path: 'sesion', loadChildren: './pages/sesion/sesion.module#SesionModule' },
  { path: 'register', loadChildren: './pages/register/register.module#RegisterModule' },
  { path: '**', component: ErrorComponent }
];

 const routing: ModuleWithProviders = RouterModule.forRoot(routes, {
  preloadingStrategy: PreloadAllModules
});

export {routing}
