import { Component, OnInit } from '@angular/core';
import {ReporteServices, FiltroReporte} from '../../../servicios/reporte.service';
import {Socio} from '../../../servicios/socio.service';
import { CsvServices, RequestCsv } from '../../../servicios/csv.service';
import { arrayToHash } from '@fullcalendar/core/util/object';
import { ExcelService } from '../../../servicios/excel.service';

@Component({
  selector: 'app-reporte-socios',
  templateUrl: './socios.component.html',
  styleUrls: ['./socios.component.scss']
})
export class SociosComponent implements OnInit {

  public filter: FiltroReporte = new FiltroReporte();
  public items: Socio[];
  searchText = '';

  private dataExportar:any[];

    constructor(private itemsServ: ReporteServices, private csvServ: CsvServices,private excelService:ExcelService) { 
      this.dataExportar = new Array();
    }

    ngOnInit() {
      this.getItems();
    }

    getItems() {
      console.log(this.filter);
      this.itemsServ.socios(this.filter).subscribe(items => {
        this.items = items;
        this.items.sort((a, b) => a.nombre.localeCompare(b.nombre));
        this.items.map(a => a.nombre.toUpperCase());
      })
    }

    downloadCsvWithServices() {
     /*  const req = new RequestCsv(['nombre', 'apellido', 'nroDocumento', 'fechaCreacion'], this.items, 'listado_socios');
      this.csvServ.request.next(req); */
      this.imprimirExcel();
    }

    imprimirExcel(){
      const tituloWorkBook = 'Socios';
      const titlulo = 'Reporte Socios';
      const nombreArchivo= 'socios.xlsx'
      const cabeceras = ["Nombre", "Apellido","Documento", "Telefono", "Celular", "Email", "Sexo","Estado Civil",
    "Fecha Nacimiento","Fecha Alta", "Estado"]

    this.items.forEach(socio => {
      var data = [socio.nombre,socio.apellido,socio.nroDocumento,socio.telefono,socio.celular,socio.email,socio.sexo,socio.estadoCivil,socio.fechaNacimiento,socio.fechaCreacion,socio.estado];
this.dataExportar.push(data );
    });
    
    let filtros= [];/* , 'Sexo: '+ this.filter.sexo,'Edad Desde: '+ this.filter.edadDesde,'Edad Hasta: ' + this.filter.edadHasta ] */
   if(this.filter.sexo != '' &&  this.filter.sexo != null) filtros.push('Sexo: '+ this.filter.sexo);
   if(this.filter.edadDesde != '' && this.filter.edadDesde != null) filtros.push('Edad Desde: '+ this.filter.edadDesde);
   if(this.filter.edadHasta != '' && this.filter.edadHasta != null) filtros.push('Edad Hasta: '+ this.filter.edadHasta);
   if(this.filter.fechaDesde != '' && this.filter.fechaDesde != null) filtros.push('fechaDesde: '+ this.filter.fechaDesde);
   if(this.filter.fechaHasta != '' && this.filter.fechaHasta != null) filtros.push('fechaHasta: '+ this.filter.fechaHasta);
   if(this.filter.estadoCivil != '' && this.filter.estadoCivil != null) filtros.push('Estado Civil: '+ this.filter.estadoCivil);
  if(this.filter.Tags.length > 0){
    let tags = 'Tags: '
    this.filter.Tags.forEach(tag => {
      tags += tag + ',';
});
     filtros.push(tags);
  }
    this.excelService.reporteExcel(tituloWorkBook,titlulo,nombreArchivo,cabeceras,this.dataExportar,filtros);
    
    }
}
