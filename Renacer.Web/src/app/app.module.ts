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
import { UserServices } from './resources/users.service';
import { PersonaServices } from './resources/persona.service';
import { SocioServices } from './resources/socio.service';
import { EspacioServices } from './resources/espacio.service';
import { EncargadoEventoServices } from './resources/encargado.service';
import { ReporteServices } from './resources/reporte.service';
import { EventoServices, TipoEventoServices, DetalleEventoServices, AsociacionServices, InscripcionServices } from './resources/evento.service';
import { TipoDocumentoServices } from './resources/tipo-documento.service';
import { AsistenciaServices } from './resources/asistencia.service';
import { TagServices } from './resources/tag.service';
import { NguiAutoCompleteModule } from '@ngui/auto-complete';
import { RolServices } from './resources/rol.service';
import { TipoEspacioServices } from '../app/pages/tipoEspacio/tipoEspacio.service';
import { AccessGuard } from './resources/accessGuard.service';
import { DatePipe } from '@angular/common';

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
    NguiAutoCompleteModule
  ],
  providers: [
    AppConfig,
    AccessGuard,
    UserServices,
    PersonaServices,
    SocioServices,
    EspacioServices,
    TagServices,
    EventoServices,
    TipoEventoServices,
    DetalleEventoServices,
    EncargadoEventoServices,
    TipoDocumentoServices,
    AsistenciaServices,
    ReporteServices,
    AsociacionServices,
    InscripcionServices,
    RolServices,
    TipoEspacioServices,
    DatePipe],
  bootstrap: [AppComponent]
})
export class AppModule { }
