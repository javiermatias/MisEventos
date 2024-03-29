import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { NgSelectModule } from '@ng-select/ng-select';

import { PerfectScrollbarModule } from 'ngx-perfect-scrollbar';
import { PerfectScrollbarConfigInterface } from 'ngx-perfect-scrollbar';
import { PERFECT_SCROLLBAR_CONFIG } from 'ngx-perfect-scrollbar';
const DEFAULT_PERFECT_SCROLLBAR_CONFIG: PerfectScrollbarConfigInterface = {
  suppressScrollX: true
};
import { NgxStarsModule } from 'ngx-stars';

import { ToastContainerModule } from 'ngx-toastr';
import { DirectivesModule } from '../theme/directives/directives.module';
import { PipesModule } from '../theme/pipes/pipes.module';
import { SharedModule } from '../mis-eventos/componentesCompartidos/shared.module';
import { routing } from './pages.routing';
import { PagesComponent } from './pages.component';
import { BlankComponent } from './blank/blank.component';
import { MenuComponent } from '../theme/components/menu/menu.component';
import { SidebarComponent } from '../theme/components/sidebar/sidebar.component';
import { NavbarComponent } from '../theme/components/navbar/navbar.component';
import { MessagesComponent } from '../theme/components/messages/messages.component';
import { BreadcrumbComponent } from '../theme/components/breadcrumb/breadcrumb.component';
import { BackTopComponent } from '../theme/components/back-top/back-top.component';
import { SearchComponent } from './search/search.component';
import { SociosComponent } from '../mis-eventos/socios/socios.component';
import { SecretariosComponent } from '../mis-eventos/secretarios/secretarios.component';
import { DataTableModule } from 'angular-6-datatable';
import { EspaciosComponent } from '../mis-eventos/espacios/espacios.component';
import { TipoEspacioComponent } from '../mis-eventos/espacios/tipoEspacio/tipoEspacio.component';
import { DomicilioComponent } from '../mis-eventos/socios/domicilio/domicilio.component';
import { ContactoComponent } from '../mis-eventos/socios/contacto/contacto.component';
import { EncargadosComponent } from '../mis-eventos/encargados/encargados.component';
import { RolComponent } from './rol/rol.component';
import { NguiAutoCompleteModule } from '@ngui/auto-complete';
import { MatriculaComponent } from '../mis-eventos/matricula/matricula.component';
import { NuevaMatriculaComponent } from '../mis-eventos/matricula/nueva-matricula/nueva-matricula.component';
import { CobroMatriculaComponent } from '../mis-eventos/matricula/cobro-matricula/cobro-matricula.component';
import { MatriculasPagadasComponent } from '../mis-eventos/matricula/matriculas-pagadas/matriculas-pagadas.component';
import { RecordatoriosComponent } from '../mis-eventos/recordatorios/recordatorios.component';
import { DragulaModule } from 'ng2-dragula';
import { NuevoRecordatorioComponent } from '../mis-eventos/recordatorios/nuevo-recordatorio/nuevo-recordatorio.component';
import { PagoCuotaComponent } from '../mis-eventos/pagos/pago-cuota/pago-cuota.component';
import { NuevaAsistenciaComponent } from '../mis-eventos/asistencia/nueva-asistencia/nueva-asistencia.component';
import { AsistenciaComponent } from '../mis-eventos/asistencia/asistencia.component';
import { CambioContraseniaComponent } from '../mis-eventos/usuarios/cambio-contrasenia/cambio-contrasenia.component';
import { PasswordStrengthBarModule } from 'ng2-password-strength-bar';
import { CheckPasswordDirective } from '../mis-eventos/usuarios/cambio-contrasenia/check-password.directive';
import { EventosxsocioComponent } from '../mis-eventos/socios/eventosxsocio/eventosxsocio.component';
import { OpinionEventoComponent } from '../mis-eventos/socios/opinion-evento/opinion-evento.component';
import { AsistenciasSocioComponent } from '../mis-eventos/socios/asistencias-socio/asistencias-socio.component';
import { SocioInscripcionComponent } from '../mis-eventos/socios/socio-inscripcion/socio-inscripcion.component';
import { DetalleComponent } from '../mis-eventos/socios/socio-inscripcion/detalle/detalle.component';
import { MisPagosComponent } from '../mis-eventos/socios/mis-pagos/mis-pagos.component';
import { MisDatosComponent } from '../mis-eventos/socios/mis-datos/mis-datos.component';
import { MisInteresesComponent } from '../mis-eventos/socios/mis-intereses/mis-intereses.component';
import { DonacionesComponent } from '../mis-eventos/socios/donaciones/donaciones.component';
import { ComprobantePagoComponent } from '../mis-eventos/socios/mis-pagos/comprobante-pago/comprobante-pago.component';
import { EventoModificarComponent } from '../mis-eventos/evento/lista/evento-modificar/evento-modificar.component';
import { VerAsistenciaComponent } from '../mis-eventos/asistencia/ver-asistencia/ver-asistencia.component';



@NgModule({
  imports: [
    CommonModule,
    PerfectScrollbarModule,
    ToastContainerModule,
    DirectivesModule,
    PipesModule,
    routing,
    FormsModule,
    DataTableModule,
    NguiAutoCompleteModule,
    SharedModule,
    DragulaModule,
    ReactiveFormsModule,
    PasswordStrengthBarModule,
    NgxStarsModule,
    NgSelectModule
  ],
  providers: [
    {
      provide: PERFECT_SCROLLBAR_CONFIG,
      useValue: DEFAULT_PERFECT_SCROLLBAR_CONFIG
    }
  ],
  declarations: [
    PagesComponent,
    BlankComponent,
    MenuComponent,
    SidebarComponent,
    NavbarComponent,
    MessagesComponent,
    BreadcrumbComponent,
    BackTopComponent,
    SearchComponent,
    SociosComponent,
    SecretariosComponent,
    EspaciosComponent,
    TipoEspacioComponent,
    DomicilioComponent,
    ContactoComponent,
    EncargadosComponent,
    RolComponent,
    MatriculaComponent,
    NuevaMatriculaComponent,
    CobroMatriculaComponent,
    MatriculasPagadasComponent,
    RecordatoriosComponent,
    NuevoRecordatorioComponent,
    PagoCuotaComponent,
    NuevaAsistenciaComponent,
    AsistenciaComponent,
    CambioContraseniaComponent,
    CheckPasswordDirective,
    EventosxsocioComponent,
    OpinionEventoComponent,
    AsistenciasSocioComponent,
    SocioInscripcionComponent,
    DetalleComponent,
    MisPagosComponent,
    MisDatosComponent,
    MisInteresesComponent,
    DonacionesComponent,
    ComprobantePagoComponent,
    EventoModificarComponent,
    VerAsistenciaComponent
  ]
  , exports: [
    BreadcrumbComponent,
    BackTopComponent,
    SociosComponent,
    SecretariosComponent,
    EspaciosComponent,
    TipoEspacioComponent,
    DomicilioComponent,
    ContactoComponent,
    RolComponent,
    EncargadosComponent
  ]
})

export class PagesModule { }
