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
// import { RolesUsuarioComponent } from './rol/rolesUsuario.component';
import { TipoEspacioComponent } from '../mis-eventos/espacios/tipoEspacio/tipoEspacio.component';
import { UsuarioComponent } from './usuarios/usuarios.component';
import { MatriculaComponent } from '../mis-eventos/matricula/matricula.component';
import { NuevaMatriculaComponent } from '../mis-eventos/matricula/nueva-matricula/nueva-matricula.component';
import { CobroMatriculaComponent } from '../mis-eventos/matricula/cobro-matricula/cobro-matricula.component';
import { MatriculasPagadasComponent } from '../mis-eventos/matricula/matriculas-pagadas/matriculas-pagadas.component';
import { RecordatoriosComponent } from '../mis-eventos/recordatorios/recordatorios.component';
import { PagoCuotaComponent } from '../mis-eventos/pagos/pago-cuota/pago-cuota.component';
//import { LoginComponent } from './login/login.component';


export const routes: Routes = [
    {
        path: '',
        component: PagesComponent,
        children: [
            { path: '', redirectTo: 'login', pathMatch: 'full' },
            { path: 'dashboard', loadChildren: 'app/pages/dashboard/dashboard.module#DashboardModule', data: { breadcrumb: 'Dashboard' } },
            { path: 'maps', loadChildren: 'app/pages/maps/maps.module#MapsModule', data: { breadcrumb: 'Maps' } },
            { path: 'charts', loadChildren: 'app/pages/charting/charting.module#ChartingModule', data: { breadcrumb: 'Charts' } },
            { path: 'ui', loadChildren: 'app/pages/ui/ui.module#UiModule', data: { breadcrumb: 'UI' } },
            { path: 'tools', loadChildren: 'app/pages/tools/tools.module#ToolsModule', data: { breadcrumb: 'Tools' } },
            { path: 'mail', loadChildren: 'app/pages/mail/mail.module#MailModule', data: { breadcrumb: 'Mail' } },
            { path: 'calendar', loadChildren: 'app/pages/calendar/calendar.module#CalendarModule', data: { breadcrumb: 'Calendar' } },
            { path: 'form-elements', loadChildren: 'app/pages/form-elements/form-elements.module#FormElementsModule', data: { breadcrumb: 'Form Elements' } },
            { path: 'tables', loadChildren: 'app/pages/tables/tables.module#TablesModule', data: { breadcrumb: 'Tables' } },
            { path: 'editors', loadChildren: 'app/pages/editors/editors.module#EditorsModule', data: { breadcrumb: 'Editors' } },
            { path: 'evento', loadChildren: 'app/mis-eventos/evento/evento.module#EventoModule', data: { breadcrumb: 'Eventos' } },
            { path: 'reportes', loadChildren: 'app/pages/reportes/reporte.module#ReporteModule', data: { breadcrumb: 'Reportes' } },
            { path: 'search', component: SearchComponent, data: { breadcrumb: 'Search' } },
            { path: 'socios', component: SociosComponent, data: { breadcrumb: 'Socios' } },
            { path: 'secretarios', component: SecretariosComponent, data: { breadcrumb: 'Secretarios' } },
            { path: 'espacios', component: EspaciosComponent, data: { breadcrumb: 'Espacios' } },
            { path: 'tipoEspacio', component: TipoEspacioComponent, data: { breadcrumb: 'Tipo Espacios' } },
            { path: 'asistencia', component: AsistenciaComponent, data: { breadcrumb: 'Asistencias' } },
            { path: 'rol', component: RolComponent, data: { breadcrumb: 'Roles' } },
            { path: 'encargados', component: EncargadosComponent, data: { breadcrumb: 'Encargados' } },
            { path: 'usuario', component: UsuarioComponent, data: { breadcrumb: 'Usuarios' } },
            { path: 'matricula', component: MatriculaComponent, data: { breadcrumb: 'Matricula' } },
            { path: 'formulario-matricula/:id', component: NuevaMatriculaComponent, data: { breadcrumb: '' } },
            { path: 'cobro-matricula', component: CobroMatriculaComponent, data: { breadcrumb: '' } },
            { path: 'pago-matricula', component: MatriculasPagadasComponent, data: { breadcrumb: '' } },
            { path: 'recordatorios', component: RecordatoriosComponent, data: { breadcrumb: '' } },
            { path: 'pago-cuota', component: PagoCuotaComponent, data: { breadcrumb: '' } },
            //{ path: 'login', component: LoginComponent, data: { breadcrumb: '' } },
            // { path: 'seleccionarRol', component: RolesUsuarioComponent, data: { breadcrumb: 'Selecionar rol'}},
            { path: 'blank', component: BlankComponent, data: { breadcrumb: 'Blank page' } }
        ]
    }
];

export const routing: ModuleWithProviders = RouterModule.forChild(routes);
