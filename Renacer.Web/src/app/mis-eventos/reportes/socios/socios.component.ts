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
    });/* 
    public barrio?: string,
    public sexo?: string,
    public Tags?: Array<Tag>,
    public edadDesde?: String,
    public edadHasta?: String,
    public fechaDesde?: String,
    public fechaHasta?: String */
    let filtros= ['Filtros', 'Sexo: '+ this.filter.sexo,'Edad Desde: '+ this.filter.edadDesde,'Edad Hasta: ' + this.filter.edadHasta ]
    this.excelService.reporteExcel(tituloWorkBook,titlulo,nombreArchivo,cabeceras,this.dataExportar,filtros);
    
    }
}
