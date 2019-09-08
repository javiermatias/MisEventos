import { Routes, RouterModule } from '@angular/router';
import { ModuleWithProviders } from '@angular/core';
import { PagesComponent } from './pages.component';
import { BlankComponent } from './blank/blank.component';
import { SearchComponent } from './search/search.component';
import { SociosComponent } from '../mis-eventos/socios/socios.component';
import { SecretariosComponent } from '../mis-eventos/secretarios/secretarios.component';
import { EspaciosComponent } from '../mis-eventos/espacios/espacios.component';
import { EncargadosComponent } from '../mis-eventos/encargados/encargados.component';
import { AsistenciaComponent } from '../mis-eventos/asistencia/asistencia.component';
import { RolComponent } from './rol/rol.component';
import { TipoEspacioComponent } from '../mis-eventos/espacios/tipoEspacio/tipoEspacio.component';
import { MatriculaComponent } from '../mis-eventos/matricula/matricula.component';
import { NuevaMatriculaComponent } from '../mis-eventos/matricula/nueva-matricula/nueva-matricula.component';
import { CobroMatriculaComponent } from '../mis-eventos/matricula/cobro-matricula/cobro-matricula.component';
import { MatriculasPagadasComponent } from '../mis-eventos/matricula/matriculas-pagadas/matriculas-pagadas.component';
import { RecordatoriosComponent } from '../mis-eventos/recordatorios/recordatorios.component';
import { PagoCuotaComponent } from '../mis-eventos/pagos/pago-cuota/pago-cuota.component';
import { CambioContraseniaComponent } from '../mis-eventos/usuarios/cambio-contrasenia/cambio-contrasenia.component';

//import { LoginComponent } from './login/login.component';


import { DashboardModule } from './dashboard/dashboard.module';
import { ChartingModule } from './charting/charting.module';
import { EventoModule } from '../mis-eventos/evento/evento.module';
import { ReporteModule } from './reportes/reporte.module';
import { UsuariosModule } from './usuarios/usuarios.module';


export const routes: Routes = [
    {
        path: '',
        component: PagesComponent,
        children: [
            { path: '', redirectTo: 'login', pathMatch: 'full' },
            { path: 'dashboard', loadChildren: ()=> DashboardModule, data: { breadcrumb: 'Dashboard' } },
            { path: 'charts', loadChildren:  ()=> ChartingModule , data: { breadcrumb: 'Charts' } },
            { path: 'evento', loadChildren:  ()=> EventoModule , data: { breadcrumb: 'Eventos' } },
            { path: 'reportes', loadChildren:  ()=> ReporteModule , data: { breadcrumb: 'Reportes' } },
            { path: 'search', component: SearchComponent, data: { breadcrumb: 'Search' } },
            { path: 'socios', component: SociosComponent, data: { breadcrumb: 'Socios' } },
            { path: 'secretarios', component: SecretariosComponent, data: { breadcrumb: 'Secretarios' } },
            { path: 'espacios', component: EspaciosComponent, data: { breadcrumb: 'Espacios' } },
            { path: 'tipoEspacio', component: TipoEspacioComponent, data: { breadcrumb: 'Tipo Espacios' } },
            { path: 'asistencia', component: AsistenciaComponent, data: { breadcrumb: 'Asistencias' } },
            { path: 'rol', component: RolComponent, data: { breadcrumb: 'Roles' } },
            { path: 'encargados', component: EncargadosComponent, data: { breadcrumb: 'Encargados' } },
            { path: 'usuario', loadChildren: ()=> UsuariosModule , data: { breadcrumb: 'Usuario' } },
            { path: 'matricula', component: MatriculaComponent, data: { breadcrumb: 'Matricula' } },
            { path: 'formulario-matricula/:id', component: NuevaMatriculaComponent, data: { breadcrumb: '' } },
            { path: 'cobro-matricula', component: CobroMatriculaComponent, data: { breadcrumb: '' } },
            { path: 'pago-matricula', component: MatriculasPagadasComponent, data: { breadcrumb: '' } },
            { path: 'recordatorios', component: RecordatoriosComponent, data: { breadcrumb: '' } },
            { path: 'pago-cuota', component: PagoCuotaComponent, data: { breadcrumb: '' } },
            { path: 'cambio-contrasena', component: CambioContraseniaComponent, data: { breadcrumb: '' } },
            { path: 'blank', component: BlankComponent, data: { breadcrumb: 'Blank page' } }
        ]
    }
];

export const routing: ModuleWithProviders = RouterModule.forChild(routes);
