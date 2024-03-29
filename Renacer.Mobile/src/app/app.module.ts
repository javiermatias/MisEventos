// import 'pace';
import { BrowserModule } from '@angular/platform-browser';
import { NgModule, LOCALE_ID } from '@angular/core';
import { HttpClientModule } from '@angular/common/http';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { DatePipe, CommonModule, registerLocaleData } from '@angular/common';
import { AgmCoreModule } from '@agm/core';
import { routing } from './app.routing';
import { AppConfig } from './app.config';
import { AppComponent } from './app.component';
import { ErrorComponent } from './pages/error/error.component';
import { UserServices } from './servicios/users.service';
import { PersonaServices } from './servicios/persona.service';
import { SocioServices, SocioMatriculaServices } from './servicios/socio.service';
import { SecretarioServices } from './servicios/secretario.service';
import { EspacioServices } from './servicios/espacio.service';
import { EncargadoEventoServices } from './servicios/encargado.service';
import { ReporteServices } from './servicios/reporte.service';
import { EventoServices, TipoEventoServices, DetalleEventoServices, InscripcionServices, PagoServices } from './servicios/evento.service';
import { TipoDocumentoServices } from './servicios/tipo-documento.service';
import { AsistenciaServices, AsistenciaEventoServices, AsistenciaDetalleEventoServices } from './servicios/asistencia.service';
import { TagServices } from './servicios/tag.service';
import { NguiAutoCompleteModule } from '@ngui/auto-complete';
import { RolServices } from './servicios/rol.service';
import { TipoEspacioServices } from './mis-eventos/espacios/tipoEspacio/tipoEspacio.service';
import { AccessGuard } from './servicios/accessGuard.service';
import { MatriculaServices } from './servicios/matricula.service';
import { MatriculaxsocioService } from './servicios/matriculaxsocio.service';
import { DragulaModule } from 'ng2-dragula';
import { RecordatorioServices, RecordatorioHoyServices, ActualizarEventoServices } from './servicios/recordatorio.service';
import { CalendarioServices } from './servicios/calendario.service';
import { AuthInterceptorProvider } from './servicios/request.interceptor';
import { ToastrModule } from 'ngx-toastr';
import { CambioContraseniaService } from './servicios/cambioContrasenia';
import localeEs from '@angular/common/locales/es-AR';
import { RatingServices } from './servicios/rating.service';
import { AsistenciaSocioServices } from './servicios/asistenciaSocio.service';
import { DeudaCuotaServices } from './servicios/deudaCuota.service';
import { CsvServices } from './servicios/csv.service';
import { Angular2CsvModule } from 'angular2-csv';
import { CsvWrapperComponent } from './mis-eventos/componentesCompartidos/csv-wrapper/csv-wrapper.component';
import { ImprimirService } from './servicios/imprimir.service';
import { NgHttpLoaderModule } from 'ng-http-loader';
import { ExcelService } from './servicios/excel.service';
import { AngularMyDatePickerModule } from 'angular-mydatepicker';
import { ServiceWorkerModule } from '@angular/service-worker';
import { environment } from '../environments/environment';
import { ProximoEventoService } from './servicios/proximo-evento.service';




registerLocaleData(localeEs, 'es-AR');
@NgModule({
  declarations: [
    AppComponent,
    ErrorComponent,
    CsvWrapperComponent
  ],
  imports: [
    BrowserModule,
    BrowserAnimationsModule,
    HttpClientModule,
    AgmCoreModule.forRoot({
      apiKey: 'AIzaSyDe_oVpi9eRSN99G4o6TwVjJbFBNr58NxE'
    }),
    routing,
    DragulaModule,
    NguiAutoCompleteModule,
    CommonModule,
    ToastrModule.forRoot(),
    Angular2CsvModule,
    NgHttpLoaderModule.forRoot(),
    AngularMyDatePickerModule,
    ServiceWorkerModule.register('ngsw-worker.js', { enabled: environment.production })
  ],
  providers: [
    AppConfig,
    AccessGuard,
    AuthInterceptorProvider,
    UserServices,
    PersonaServices,
    SocioServices,
    SocioMatriculaServices,
    SecretarioServices,
    EspacioServices,
    TagServices,
    EventoServices,
    TipoEventoServices,
    DetalleEventoServices,
    EncargadoEventoServices,
    TipoDocumentoServices,
    AsistenciaServices,
    ReporteServices,
    InscripcionServices,
    RolServices,
    TipoEspacioServices,
    MatriculaServices,
    MatriculaxsocioService,
    RecordatorioServices,
    RecordatorioHoyServices,
    ActualizarEventoServices,
    PagoServices,
    CalendarioServices,
    CambioContraseniaService,
    RatingServices,
    AsistenciaSocioServices,
    DeudaCuotaServices,
    CsvServices,
    ImprimirService,
    ExcelService,
    ProximoEventoService ,
    AsistenciaEventoServices,
    AsistenciaDetalleEventoServices,
    { provide: LOCALE_ID, useValue: 'es-AR' },
    DatePipe],
    bootstrap: [AppComponent]
})
export class AppModule { }
