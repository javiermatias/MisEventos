import { Routes, RouterModule, PreloadAllModules } from '@angular/router';
import { ModuleWithProviders } from '@angular/core';
import { ErrorComponent } from './pages/error/error.component';
import { AccessGuard } from './servicios/accessGuard.service';
import { PagesModule } from './pages/pages.module';
import { SesionModule } from './pages/sesion/sesion.module';
import { RegisterModule } from './pages/register/register.module';

 const routes: Routes = [
  { path: '', redirectTo: 'sesion', pathMatch: 'full' },
  { path: 'pages', loadChildren: () => import('./pages/pages.module').then(mod => mod.PagesModule) },
  { path: 'sesion', loadChildren:  ()=> SesionModule },
  { path: 'register', loadChildren: ()=> RegisterModule },
  { path: '**', component: ErrorComponent }
];

 const routing: ModuleWithProviders = RouterModule.forRoot(routes, {
  preloadingStrategy: PreloadAllModules,
  useHash: true
});

export {routing}
