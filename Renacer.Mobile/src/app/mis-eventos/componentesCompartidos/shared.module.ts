import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule } from '@angular/router';
import { FormsModule } from '@angular/forms';
import { DirectivesModule } from '../../theme/directives/directives.module';
import { NguiAutoCompleteModule  } from '@ngui/auto-complete';
import { DataTableModule } from 'angular-6-datatable';
import { PipesModule } from '../../theme/pipes/pipes.module';
import { SelectSocioComponent } from './select-socio/select-socio.component';
import { SelectTagsComponent } from './select-tags/select-tags.component';
import { SelectEspacioComponent } from './select-espacio/select-espacio.component';
import { SelectEncargadoComponent } from './select-encargado/select-encargado.component';
import { SelectTipoEventoComponent } from './select-tipo-evento/select-tipo-evento.component';
import { SelectEventoComponent } from './select-evento/select-evento.component';
import { TipoDocumentoComponent } from './tipo-documento/tipo-documento.component';
import { FilterSocioComponent } from './filter-socio/filter-socio.component';
import { FiltroRangoDeFechasComponent } from './filtro-rango-fechas/filtro-rango-fechas.component';
import { TablaComponent } from './tabla/tabla.component';
import { NgxStarsModule } from 'ngx-stars';
import { SelectOneSocioComponent } from './select-one-socio/select-one-socio/select-one-socio.component';
import { Angular2CsvModule } from 'angular2-csv';
import { AngularMyDatePickerModule } from 'angular-mydatepicker';
import { ImprimirPagoComponent } from './imprimir-pago/imprimir-pago.component';


@NgModule({
  imports: [
      CommonModule,
      DirectivesModule,
      PipesModule,
      FormsModule,
      DataTableModule,
      NguiAutoCompleteModule,
      NgxStarsModule,
      Angular2CsvModule,
      AngularMyDatePickerModule
  ],
  declarations: [
    SelectSocioComponent,
    SelectTagsComponent,
    SelectEspacioComponent,
    SelectTipoEventoComponent,
    SelectEncargadoComponent,
    TipoDocumentoComponent,
    SelectEventoComponent,
    FilterSocioComponent,
    FiltroRangoDeFechasComponent,
    TablaComponent,
    SelectOneSocioComponent,
    ImprimirPagoComponent
  ],
  exports: [
    SelectSocioComponent,
    SelectTagsComponent,
    SelectEspacioComponent,
    SelectTipoEventoComponent,
    SelectEncargadoComponent,
   TipoDocumentoComponent,
   SelectEventoComponent,
   FilterSocioComponent,
   FiltroRangoDeFechasComponent,
   TablaComponent,
   SelectOneSocioComponent,
   ImprimirPagoComponent
   ]
})
export class SharedModule { }
