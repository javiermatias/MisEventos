import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule }   from '@angular/forms';
import { PerfectScrollbarModule } from 'ngx-perfect-scrollbar';
import { PerfectScrollbarConfigInterface } from 'ngx-perfect-scrollbar';
const PERFECT_SCROLLBAR_CONFIG: PerfectScrollbarConfigInterface = {
  suppressScrollX: true
};
import { ToastrModule } from 'ngx-toastr';
import { DirectivesModule } from '../theme/directives/directives.module';
import { PipesModule } from '../theme/pipes/pipes.module';
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
import { SociosComponent } from './socios/socios.component';
import { DataTableModule } from "angular2-datatable";
import { EspaciosComponent } from './espacios/espacios.component';
import { DomicilioComponent } from './domicilio/domicilio.component';
import { ContactoComponent } from './contacto/contacto.component';
import { EncargadosComponent } from './encargados/encargados.component';
import { TipoDocumentoComponent } from './tipo-documento/tipo-documento.component';
import { SelectTagsComponent } from './select-tags/select-tags.component';
//import { Typeahead } from 'ng2-typeahead';
import { NguiAutoCompleteModule  } from '@ngui/auto-complete';
import { EventoComponent } from './evento/evento.component';
import { SelectSocioComponent } from './select-socio/select-socio.component';
import { CalendarComponent } from './evento/calendar.component';
import { DetalleEventoComponent } from './evento/detalle-evento.component';

@NgModule({
  imports: [
    CommonModule,
    PerfectScrollbarModule.forRoot(PERFECT_SCROLLBAR_CONFIG),
    ToastrModule.forRoot(),
    DirectivesModule,
    PipesModule,
    routing,
    FormsModule,
    DataTableModule,NguiAutoCompleteModule
  //  Typeahead
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
    DomicilioComponent,
    ContactoComponent,
    EncargadosComponent,
    TipoDocumentoComponent,
    SelectTagsComponent,
    EventoComponent,
    SelectSocioComponent,
    CalendarComponent,
    DetalleEventoComponent,
  ]
})
export class PagesModule { }
