import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { PerfectScrollbarModule } from 'ngx-perfect-scrollbar';
import { PerfectScrollbarConfigInterface } from 'ngx-perfect-scrollbar';
const PERFECT_SCROLLBAR_CONFIG: PerfectScrollbarConfigInterface = {
  suppressScrollX: true
};
import { ToastrModule, ToastContainerModule  } from 'ngx-toastr';
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
import { DataTableModule } from "angular2-datatable";
import { EspaciosComponent } from '../mis-eventos/espacios/espacios.component';
import { TipoEspacioComponent } from '../mis-eventos/espacios/tipoEspacio/tipoEspacio.component';
import { DomicilioComponent } from '../mis-eventos/socios/domicilio/domicilio.component';
import { ContactoComponent } from '../mis-eventos/socios/contacto/contacto.component';
import { EncargadosComponent } from '../mis-eventos/encargados/encargados.component';
import { RolComponent } from './rol/rol.component';
import { NguiAutoCompleteModule } from '@ngui/auto-complete';
import { UsuarioComponent } from './usuarios/usuarios.component';
import { MatriculaComponent } from '../mis-eventos/matricula/matricula.component';
import { NuevaMatriculaComponent } from '../mis-eventos/matricula/nueva-matricula/nueva-matricula.component';
import { CobroMatriculaComponent } from '../mis-eventos/matricula/cobro-matricula/cobro-matricula.component';
import { MatriculasPagadasComponent } from '../mis-eventos/matricula/matriculas-pagadas/matriculas-pagadas.component';
import { RecordatoriosComponent } from '../mis-eventos/recordatorios/recordatorios.component';
import { DragulaModule } from 'ng2-dragula';
import { NuevoRecordatorioComponent } from '../mis-eventos/recordatorios/nuevo-recordatorio/nuevo-recordatorio.component';
import { PagoCuotaComponent } from '../mis-eventos/pagos/pago-cuota/pago-cuota.component';
import { MultiselectDropdownModule } from 'angular-2-dropdown-multiselect';
import { NuevaAsistenciaComponent } from '../mis-eventos/asistencia/nueva-asistencia/nueva-asistencia.component';
import { AsistenciaComponent } from '../mis-eventos/asistencia/asistencia.component';
//import { LoginComponent } from './login/login.component';


@NgModule({
  imports: [
    CommonModule,
    PerfectScrollbarModule.forChild(),
    ToastrModule.forRoot(),
    ToastContainerModule,
    DirectivesModule,
    PipesModule,
    routing,
    FormsModule,
    DataTableModule,
    NguiAutoCompleteModule,
    SharedModule,
    DragulaModule,    
    MultiselectDropdownModule,
    ReactiveFormsModule
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
    EspaciosComponent,
    TipoEspacioComponent,
    DomicilioComponent,
    ContactoComponent,
    EncargadosComponent,
    RolComponent,   
    UsuarioComponent,
    MatriculaComponent,
    NuevaMatriculaComponent,
    CobroMatriculaComponent,
    MatriculasPagadasComponent,
    RecordatoriosComponent,
    NuevoRecordatorioComponent,
    PagoCuotaComponent,
    NuevaAsistenciaComponent,
    AsistenciaComponent,
   // LoginComponent 
  ]
  , exports: [
    BreadcrumbComponent,
    BackTopComponent,
    SociosComponent,
    EspaciosComponent,
    TipoEspacioComponent,
    DomicilioComponent,
    ContactoComponent,
    RolComponent,
    EncargadosComponent

   
  ]
})

export class PagesModule { }
