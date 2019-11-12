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

import { DashboardModule } from './dashboard/dashboard.module';
import { ChartingModule } from './charting/charting.module';
import { EventoModule } from '../mis-eventos/evento/evento.module';
import { ReporteModule } from '../mis-eventos/reportes/reporte.module';
import { UsuariosModule } from './usuarios/usuarios.module';
import { EventosxsocioComponent } from '../mis-eventos/socios/eventosxsocio/eventosxsocio.component';
import { OpinionEventoComponent } from '../mis-eventos/socios/opinion-evento/opinion-evento.component';
import { AsistenciasSocioComponent } from '../mis-eventos/socios/asistencias-socio/asistencias-socio.component';
import { SocioInscripcionComponent } from '../mis-eventos/socios/socio-inscripcion/socio-inscripcion.component';
import { MisPagosComponent } from '../mis-eventos/socios/mis-pagos/mis-pagos.component';
import { MisDatosComponent } from '../mis-eventos/socios/mis-datos/mis-datos.component';
import { MisInteresesComponent } from '../mis-eventos/socios/mis-intereses/mis-intereses.component';
import { MapsModule } from './maps/maps.module';
import { UiModule } from './ui/ui.module';
import { ToolsModule } from './tools/tools.module';
import { MailModule } from './mail/mail.module';
import { CalendarModule } from './calendar/calendar.module';
import { FormElementsModule } from './form-elements/form-elements.module';
import { TablesModule } from './tables/tables.module';
import { EditorsModule } from './editors/editors.module';
import { DonacionesComponent } from '../mis-eventos/socios/donaciones/donaciones.component';
import { ComprobantePagoComponent } from '../mis-eventos/socios/mis-pagos/comprobante-pago/comprobante-pago.component';
import { EventoModificarComponent } from '../mis-eventos/evento/lista/evento-modificar/evento-modificar.component';


export const routes: Routes = [
    {
        path: '',
        component: PagesComponent,
        children: [
            { path: '', redirectTo: 'login', pathMatch: 'full' },
            { path: 'dashboard', loadChildren: './dashboard/dashboard.module#DashboardModule', data: { breadcrumb: 'Dashboard' } },
            { path: 'charts', loadChildren:  './charting/charting.module#ChartingModule' , data: { breadcrumb: 'Charts' } },
            { path: 'maps', loadChildren:  './maps/maps.module#MapsModule', data: { breadcrumb: 'Maps' } },
            { path: 'search', component: SearchComponent, data: { breadcrumb: 'Search' } },
            { path: 'blank', component: BlankComponent, data: { breadcrumb: 'Blank page' } },            	
            { path: 'ui', loadChildren:  './ui/ui.module#UiModule', data: { breadcrumb: 'UI' } },
            { path: 'tools', loadChildren: './tools/tools.module#ToolsModule', data: { breadcrumb: 'Tools' } },		
            { path: 'mail', loadChildren:  './mail/mail.module#MailModule', data: { breadcrumb: 'Mail' } },		
            { path: 'calendar', loadChildren: './calendar/calendar.module#CalendarModule', data: { breadcrumb: 'Calendar' } },		
            { path: 'form-elements', loadChildren: './form-elements/form-elements.module#FormElementsModule',
                    data: { breadcrumb: 'Form Elements' } },
            { path: 'tables', loadChildren:  './tables/tables.module#TablesModule', data: { breadcrumb: 'Tables' } },		
            { path: 'editors', loadChildren:  './editors/editors.module#EditorsModule', data: { breadcrumb: 'Editors' } },		
         
//Comienza lo propio de mis-eventos
            { path: 'evento', loadChildren:  '../mis-eventos/evento/evento.module#EventoModule' , data: { breadcrumb: 'Eventos' } },
            { path: 'reportes', loadChildren:  '../mis-eventos/reportes/reporte.module#ReporteModule' ,
                data: { breadcrumb: 'Reportes' } },
            { path: 'socios', component: SociosComponent, data: { breadcrumb: 'Socios' } },
            { path: 'secretarios', component: SecretariosComponent, data: { breadcrumb: 'Secretarios' } },
            { path: 'espacios', component: EspaciosComponent, data: { breadcrumb: 'Espacios' } },
            { path: 'tipoEspacio', component: TipoEspacioComponent, data: { breadcrumb: 'Tipo Espacios' } },
            { path: 'asistencia', component: AsistenciaComponent, data: { breadcrumb: 'Asistencias' } },
            { path: 'rol', component: RolComponent, data: { breadcrumb: 'Roles' } },
            { path: 'encargados', component: EncargadosComponent, data: { breadcrumb: 'Encargados' } },
            { path: 'usuario', loadChildren: './usuarios/usuarios.module#UsuariosModule' , data: { breadcrumb: 'Usuario' } },
            { path: 'matricula', component: MatriculaComponent, data: { breadcrumb: 'Matricula' } },
            { path: 'formulario-matricula/:id', component: NuevaMatriculaComponent, data: { breadcrumb: '' } },
            { path: 'cobro-matricula', component: CobroMatriculaComponent, data: { breadcrumb: '' } },
            { path: 'pago-matricula', component: MatriculasPagadasComponent, data: { breadcrumb: '' } },
            { path: 'recordatorios', component: RecordatoriosComponent, data: { breadcrumb: '' } },
            { path: 'pago-cuota', component: PagoCuotaComponent, data: { breadcrumb: '' } },
            { path: 'cambio-contrasena', component: CambioContraseniaComponent, data: { breadcrumb: '' } },            
            { path: 'eventos-socio', component: EventosxsocioComponent, data: { breadcrumb: 'Mis Eventos' } },
            { path: 'opinion-evento/:id', component: OpinionEventoComponent, data: { breadcrumb: '' } },
            { path: 'asistencia-socio/:id', component: AsistenciasSocioComponent , data: { breadcrumb: '' } },
            { path: 'inscripcion-socio', component: SocioInscripcionComponent , data: { breadcrumb: '' } },
            { path: 'mis-pagos', component: MisPagosComponent , data: { breadcrumb: '' } },
            { path: 'mis-datos', component: MisDatosComponent , data: { breadcrumb: '' } },
            { path: 'mis-intereses', component: MisInteresesComponent , data: { breadcrumb: '' } },
            { path: 'donaciones', component: DonacionesComponent , data: { breadcrumb: '' } },
            { path: 'pago-confirmado/:id', component: ComprobantePagoComponent , data: { breadcrumb: '' } },
            { path: 'evento-modificar/:id', component: EventoModificarComponent, data: { breadcrumb: 'Modificar' }},

        ]
    }
];

export const routing: ModuleWithProviders = RouterModule.forChild(routes);
