import 'pace';
import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { HttpModule } from '@angular/http';
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
import { AsistenciaServices } from './servicios/asistencia.service';
import { TagServices } from './servicios/tag.service';
import { NguiAutoCompleteModule } from '@ngui/auto-complete';
import { RolServices } from './servicios/rol.service';
import { TipoEspacioServices } from './mis-eventos/espacios/tipoEspacio/tipoEspacio.service';
import { AccessGuard } from './servicios/accessGuard.service';
import { DatePipe } from '@angular/common';
import { MatriculaServices } from './servicios/matricula.service';
import { MatriculaxsocioService } from './servicios/matriculaxsocio.service';
import { DragulaModule } from 'ng2-dragula';
import { RecordatorioServices, RecordatorioHoyServices,ActualizarEventoServices } from './servicios/recordatorio.service';
import { CalendarioServices } from './servicios/calendario.service';
import { CheckPasswordDirective } from './mis-eventos/usuarios/cambio-contrasenia/check-password.directive';

@NgModule({
  declarations: [
    AppComponent,
    ErrorComponent
  ],
  imports: [
    BrowserModule,
    BrowserAnimationsModule,
    AgmCoreModule.forRoot({
      apiKey: 'AIzaSyDe_oVpi9eRSN99G4o6TwVjJbFBNr58NxE'
    }),
    routing,
    HttpModule,
    DragulaModule,
    NguiAutoCompleteModule
  ],
  providers: [
    AppConfig,
    AccessGuard,
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
    DatePipe],
  bootstrap: [AppComponent]
})
export class AppModule { }
