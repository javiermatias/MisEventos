import { Component, OnInit } from '@angular/core';
import { EventoServices, Evento, InscripcionServices, Inscripcion } from '../../../servicios/evento.service';
import { Observable } from 'rxjs';
import { DeudaCuotaServices } from '../../../servicios/deudaCuota.service';
import { DeudaCuota } from '../../../modelos/deuda-cuota';
import { AppConfig } from '../../../app.config';
import { ExcelService } from '../../../servicios/excel.service';

@Component({
  selector: 'az-deudores-cuota',
  templateUrl: './deudores-cuota.component.html'
})
export class DeudoresCuotaComponent implements OnInit {
  public eventos :Evento[];
  public evento :Evento;

  listaDeudas:Array<DeudaCuota>;

  showDeudores= false;
  
  public idEvento:number;

//Chart
   public config:any;
    public configFn:any;
    public doughnutChartType:string = 'doughnut';
    public pieChartType:string = 'pie';
    public doughnutChartLegend:boolean = true;
    public deudodoresChartLabels:string[];
    public deudodoresChartData:any;
    public deudodoresChartColors:any[];
    public deudodoresChartOptions:any;

  constructor(private _itemsService:EventoServices, private deudaServ:DeudaCuotaServices,
    private _appConfig:AppConfig,private excelService:ExcelService ) {
    this.config = this._appConfig.config;
    this.configFn = this._appConfig; 
   }

  ngOnInit() {
   this.getEventos();

  //--- Doughnut/Pie Chart ---
  this.deudodoresChartLabels = [];
  this.deudodoresChartData = [];
  this.deudodoresChartColors = [
      { 
          backgroundColor: [
              this.configFn.rgba(this.config.colors.success, 0.6),
              this.configFn.rgba(this.config.colors.warning, 0.6),
              this.configFn.rgba(this.config.colors.danger, 0.6)                  
          ],
          hoverBackgroundColor: [
              this.config.colors.success,
              this.config.colors.warning,
              this.config.colors.danger
          ],
          borderColor: this.config.colors.default,
          borderWidth: 1,
          hoverBorderWidth: 3
      } 
  ]; 
  this.deudodoresChartOptions = {
      legend: {
          labels: {
              fontColor: this.configFn.rgba(this.config.colors.gray, 0.9),
          }
      }, 
      tooltips:{
          enabled:true,
          backgroundColor: this.configFn.rgba(this.config.colors.main, 0.7)               
      }
  } 





  }

  getEventos(){

    
   this._itemsService.query({'search':'sitieneinscriptos'}).subscribe(items => {
     
    this.eventos = items;
    console.log(this.eventos);
/*    console.log(this.eventos);
    this.eventos = this.eventos.filter((item: Evento) => {
     // console.log(item.listaInscripciones.length);
      return item.listaInscripciones != null;
  
  }); */
            
    });
    
  }

  verGrafico(item:Evento){
    this.evento=item;
    this.eventoSeleccionado(item.id);
  }

  eventoSeleccionado(idEvento:number){
    this.traerDeudores(idEvento);
  }

  

  traerDeudores(_idEvento:number){
  
    this.deudaServ.query({'idEvento':_idEvento}).subscribe(items => {
      this.listaDeudas = items;
      this.deudodoresChartLabels = [];
      this.deudodoresChartData = [];    
      this.listaDeudas.forEach(deuda => {
        this.deudodoresChartLabels.push(deuda.nombreCuota);
        this.deudodoresChartData.push(deuda.listaSocios.length);
      });
     // this.baseChart.update();
      this.showDeudores=true;
      }
     );
    
}

public chartClicked(e:any):void {
  //console.log(e);
  }

  public chartHovered(e:any):void {
  //console.log(e);
  }


  volver(){
    this.showDeudores=false;
  }

  imprimir(){
   console.log("imprimir");
    const tituloWorkBook = 'Deudores';
    const titlulo = 'Reporte deudores cuotas del evento ' + this.evento.nombre;
    const nombreArchivo= 'deudores.xlsx'
    const cabeceras = ["Nombre","Apellido","Dni","Telefono","Mail"]
    this.excelService.reporteExcelDeudores(tituloWorkBook,titlulo,nombreArchivo,cabeceras, this.listaDeudas);
/*   this.items.forEach(socio => {
    var data = [socio.nombre,socio.apellido,socio.nroDocumento,socio.telefono,socio.celular,socio.email,socio.sexo,socio.estadoCivil,socio.fechaNacimiento,socio.fechaCreacion,socio.estado];
this.dataExportar.push(data );
  });
  
  let filtros= ['Filtros'];
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

 */
  }

}
