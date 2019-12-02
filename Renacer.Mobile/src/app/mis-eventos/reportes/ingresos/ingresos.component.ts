import { Component, OnInit, ViewEncapsulation, ViewChild, ElementRef} from '@angular/core';
import { AppConfig } from '../../../app.config';
import { BaseChartDirective } from 'ng4-charts';
import { ReporteServices } from '../../../servicios/reporte.service';
import {formatDate} from '@angular/common';
import localeEs from '@angular/common/locales/es';
import { registerLocaleData } from '@angular/common';
import { Array } from 'core-js';
import { TablaGrafico } from '../../../modelos/tabla-grafico';

@Component({
  selector: 'az-ingresos',
  encapsulation: ViewEncapsulation.None,
  templateUrl: './ingresos.component.html',
  styleUrls: ['./ingresos.component.scss']
})
export class IngresosComponent implements OnInit {
  //@ViewChild(BaseChartDirective) chart: BaseChartDirective;
  @ViewChild('panelA', {static: false}) chart: BaseChartDirective;
  //Config grafico Ingresos en el tiempo
  public config:any;
  public configFn:any; 
  public lineChartType1:string = 'bar';
  public lineChartType:string = 'line';
  public lineChartLegend:boolean = true;
  public lineChartLabels:string[];
  public lineChartData:Array<any>;
  public lineChartColors:any[];
  public lineChartOptions:any;
  //

   //TAbla Ingresos en el tiempo
   tablaIngresosEnElTiempo = {
    columnas: [
        {name: 'fecha', title: 'Mes', type: 'text'}
      , {name: 'matriculas', title: 'Ingreso por matriculas', type: 'money'}
      , {name: 'eventos', title: 'Ingreso por eventos', type: 'money'},
        {name: 'total', title: 'Total', type: 'money'}
    ]
  }

  IngresosEnElTiempoResponse = [
    {fecha: '2019-01', matriculas: 100, eventos: 120, total:220}
  , {fecha: '2019-02', matriculas: 30, eventos: 100, total:130}
  , {fecha: '2019-03', matriculas: 60, eventos: 90,total:150}
  ];


//Ingresos y cantidad por tipo Cuota/evento


public IngresosTipoData: Array<number>;
public IngresosTipoLabels: Array<string>;
public ingresosPorTipoEventoOpt: any;
public pieChartColors: any[];
public IngresosTipoEventoLabels: Array<string>;
public IngresosTipoEventoData: Array<number>;
 
//Tablas Ingresos y cantidad por tipo Cuota/evento
IngresosPorTipoResponse = [
  {cantidad: 13, nombre: 'Eventos', monto:500}
, {cantidad: 8, nombre: 'Matrículas', monto:500}
];

tablaColumnasTipoEvento = {
columnas: [
  {name: 'nombre', title: 'Nombre', type: 'text'}
, {name: 'cantidad', title: 'Cantidad', type: 'text'},
  {name: 'monto', title: 'Monto', type: 'money'},
]
}

//Tablas por tipoEvento

IngresosTipoEventoResponse = [
  {monto: 3, nombre: 'Curso'}
, {monto: 6, nombre: 'Taller'}
, {monto: 8, nombre: 'Conferencia'}
];
columnaTipoEvento = {
  columnas: [
    {name: 'nombre', title: 'Nombre', type: 'text'}
  , {name: 'monto', title: 'Monto', type: 'money'}
  ]
  }

tabla: TablaGrafico;

tablaTipoEvento: TablaGrafico;
//rangos de fechas
   inputInicial = new Date(new Date().getFullYear(), 0, 1);
   inputFinal = new Date();
  fechaRangoInicial = new Date(new Date().getFullYear(), 0, 1);
  fechaRangoFin = new Date();

  mostrarGrafico=false;

  mostrarGraficoTipoEvento=false;

  mostrarGraficoCantidad=false;
  cambiarGrafico=false;

//
  constructor(private _appConfig:AppConfig,private _reporteServ: ReporteServices) {
    this.tabla = new TablaGrafico("ingresos_por_tipo_de_evento",this.tablaColumnasTipoEvento);
    this.tablaTipoEvento= new TablaGrafico("ingresos_por_tipo_de_evento",this.columnaTipoEvento);
  
    this.config = this._appConfig.config;
    this.configFn = this._appConfig; 
    this.pieChartColors = this.config.pieChartColors;
    this.ingresosPorTipoEventoOpt = this.config.pieChartOptions;
    this.lineChartLabels = [];
        this.lineChartData = [
            {data: [], label: 'Total' },
            {data: [], label: 'Matriculas' },
            {data: [], label: 'Cuotas' }
        ];

        this.lineChartColors = this.config.lineChartColors;
        this.lineChartOptions = this.config.lineChartOptions;
/*     this.lineChartColors = [
        { 
            borderWidth: 2,
            backgroundColor: this.configFn.rgba(this.config.colors.success, 0.5),
            borderColor: this.config.colors.success,
            pointBorderColor: this.config.colors.default,
            pointHoverBorderColor:  this.config.colors.success,
            pointHoverBackgroundColor: this.config.colors.default,
            hoverBackgroundColor:  this.config.colors.success
        },
        { 
            borderWidth: 2,
            backgroundColor: this.configFn.rgba(this.config.colors.warning, 0.5),
            borderColor: this.config.colors.warning,
            pointBorderColor: this.config.colors.default,
            pointHoverBorderColor:  this.config.colors.warning,
            pointHoverBackgroundColor: this.config.colors.default,
            hoverBackgroundColor:  this.config.colors.warning
        },
        { 
            borderWidth: 2,
            backgroundColor: this.configFn.rgba(this.config.colors.primary, 0.5),
            borderColor: this.config.colors.primary,
            pointBorderColor: this.config.colors.default,
            pointHoverBorderColor:  this.config.colors.primary,
            pointHoverBackgroundColor: this.config.colors.default,
            hoverBackgroundColor:  this.config.colors.primary
        }
    ]; */
   }

  ngOnInit() {
    registerLocaleData(localeEs, 'es');
      this.cantidadIngresosEnElTiempo(this.fechaRangoInicial, this.fechaRangoFin);
    this.cargarIngresosEnElTiempo(this.fechaRangoInicial, this.fechaRangoFin);
    this.ingresosPorTipoEvento(this.fechaRangoInicial, this.fechaRangoFin);
  }
  public randomizeType():void {
      
    
    //this.cargarIngresosEnElTiempo(this.fechaRangoInicial, this.fechaRangoFin)
    console.log(this.chart);
    //this.chart.chart.update();
    //this.refresh_chart();
    this.cambiarGrafico = this.cambiarGrafico == true ? false : true;
   //this.cargarGrafico();
  }

  //getCantidadIngresosEnElTiempo(rangoDeFechas: any)


  cantidadIngresosEnElTiempo(fechaInicio: Date, fechaFin: Date) {
    this._reporteServ.getIngresosPorTipo({ 'fechaInicio': formatDate(fechaInicio, 'yyyy-MM-dd', 'es'),
    'fechaFin': formatDate(fechaFin, 'yyyy-MM-dd', 'es')
  }).subscribe(result => {
    console.log(result);
    
        this.IngresosTipoData = [];
        this.IngresosTipoLabels = [];
        this.IngresosPorTipoResponse = result.map(x => {
            return {'nombre': x.nombre, 'cantidad': x.cantidad, 'monto': x.monto};
        });
        this.tabla.data =this.IngresosPorTipoResponse;

        this.IngresosPorTipoResponse.forEach(item => {
            if (item.monto == null) { item.monto= 0; }
            this.IngresosTipoData.push(item.monto);
            this.IngresosTipoLabels.push(item.nombre);
            });
            this.mostrarGraficoCantidad=true;
           
    });
}

ingresosPorTipoEvento(fechaInicio: Date, fechaFin: Date){

  this._reporteServ.getIngresosPorTipoEvento({ 'fechaInicio': formatDate(fechaInicio, 'yyyy-MM-dd', 'es'),
  'fechaFin': formatDate(fechaFin, 'yyyy-MM-dd', 'es')
}).subscribe(result => {
    this.IngresosTipoEventoResponse = result.map(x => {
        return {'nombre': x.nombre, 'monto': x.monto};
    });

    this.tablaTipoEvento.data = this.IngresosTipoEventoResponse;
    
    this.IngresosTipoEventoData = [];
    this.IngresosTipoEventoLabels = [];
    this.IngresosTipoEventoResponse.forEach(item => {
        if (item.monto == null) { item.monto = 0; }
  
        this.IngresosTipoEventoData.push(item.monto);
        this.IngresosTipoEventoLabels.push(item.nombre);
        });

        this.mostrarGraficoTipoEvento=true;
  
     
  });



}


  cargarIngresosEnElTiempo(fechaInicio: Date, fechaFin: Date) {
    this._reporteServ.getIngresosEnElTiempo(
        { 'fechaInicio': formatDate(fechaInicio, 'yyyy-MM-dd', 'es'),
          'fechaFin': formatDate(fechaFin, 'yyyy-MM-dd', 'es')
        }
    ).subscribe(result => {
        //console.log(result);
        this.IngresosEnElTiempoResponse = result;
       // this.IngresosEnElTiempoResponse.total=150;
        this.lineChartData[0].data = [];    
        this.lineChartData[1].data = [];
        this.lineChartData[2].data = [];  
        this.lineChartLabels = [];
        this.IngresosEnElTiempoResponse.forEach(element => {
          this.lineChartLabels.push(element.fecha);
          const  ingresosTotales = element.matriculas + element.eventos;
          element.total=ingresosTotales;
          this.lineChartData[0].data.push(ingresosTotales);
          this.lineChartData[1].data.push(element.matriculas);
          this.lineChartData[2].data.push(element.eventos);
        });
       
        this.mostrarGrafico=true;
       // this.chart.chart.update();
      /*   this.IngresosEnElTiempoResponse = result;
        for (let i = 0; i < result.length; i++) {
                this.lineChartLabels.push(result[i].fecha)
                const  ingresosTotales = result[i].matriculas + result[i].eventos;
                this.lineChartData[0].data.push(ingresosTotales);
                this.lineChartData[1].data.push(result[i].matriculas);
                this.lineChartData[2].data.push(result[i].eventos);
            }

            this.changeDet.detectChanges(); */
    });
}




public chartClicked(e:any):void {
    console.log(e);
    }

    public chartHovered(e:any):void {
    //console.log(e);
    }

    actualizarFechaInicio(fecha: string){
      console.log(fecha);
      this.fechaRangoInicial = new Date(fecha);
      }
      actualizarFechaFin(fecha: string){
        console.log(fecha);
        this.fechaRangoFin = new Date(fecha);
      }


      filtrar(){
        this.cargarIngresosEnElTiempo(this.fechaRangoInicial, this.fechaRangoFin);
        this.cantidadIngresosEnElTiempo(this.fechaRangoInicial, this.fechaRangoFin);
        this.ingresosPorTipoEvento(this.fechaRangoInicial, this.fechaRangoFin);
      }
}
