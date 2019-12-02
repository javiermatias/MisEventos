import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { DetalleEventoServices, Evento, EventoServices } from '../../../../../servicios/evento.service';
import { ReporteServices } from '../../../../../servicios/reporte.service';
import { AppConfig } from '../../../../../app.config';

@Component({
  selector: 'az-asistencia-socio',
  templateUrl: './asistencia-socio.component.html',
  styleUrls: ['./asistencia-socio.component.scss']
})
export class AsistenciaSocioComponent implements OnInit {

  @Input() evento: Evento;

  @Output() volverAsistencia= new EventEmitter<boolean>();

//ng4chart
public config:any;
public configFn:any;
public barChartType:string = 'bar';
public barChartTypeH:string = 'horizontalBar';
public barChartLegend:boolean = true;
public barChartLabels:string[]=[];
public barChartData =  [
  {data: [], label: 'Asistencias en %'}
];
public barChartColors:any[];
public barChartOptions:any;
mostrarGrafico=false;

  //Google Chart
  id: number = 0;
  title = 'Asistencias en %';
  type = 'BarChart';
 /*  data = [
     ["2012", 900],
     ["2013", 1000],
     ["2014", 1170],
     ["2015", 1250],
     ["2016", 1530]
  ];  */

  data=[];

  //evento:Evento;
  
  columnNames = ['Socio', 'Porcentaje'];
  options = { };
  width = 700;
  height = 500; 

  tablaConfig = {
    columnas: [
        {name: 'socio', title: 'Socio', type: 'text'},
        {name: 'porcentaje', title: 'Porcentaje', type: 'text'}
  
    ]
  }

  AsistenciasSociosEventoResponse:any[]=[];
  constructor(private router: Router, private route: ActivatedRoute,   
    private _reporteServ: ReporteServices,
    private _appConfig:AppConfig) { 
      this.config = this._appConfig.config;
      this.configFn = this._appConfig;  
  //--- Bar Chart --- 
  this.barChartLabels = [];
 
  this.barChartColors = [
   
      { 
          borderWidth: 2,
          backgroundColor: this.configFn.rgba(this.config.colors.info, 0.5),
          borderColor: this.config.colors.info,
          hoverBackgroundColor: this.config.colors.info
      }
  ];
/*   yAxes: [{
    ticks: {
       steps : 10,
       stepValue : 10,
       max : 100,
       min: 0
     }
 }] */
  this.barChartOptions = {
      responsive: true,
      scales: {
          yAxes: [{
              ticks: {
                  fontColor: this.configFn.rgba(this.config.colors.gray, 0.7),
                  fontSize: 14,
                  stepSize: 10,
              
              },
              gridLines: {
                  display:true,
                  zeroLineColor: this.configFn.rgba(this.config.colors.gray, 0.4),
                  zeroLineWidth: 1,	
                  color: this.configFn.rgba(this.config.colors.gray, 0.1)
              }
          }],
          xAxes: [{
              ticks: {
                  fontColor: this.configFn.rgba(this.config.colors.gray, 0.7),
                  beginAtZero:true,
                  steps : 10,
                  stepValue : 10,
                  max : 100,
                  min: 0
              },
              gridLines: {
                  display:true,
                  zeroLineColor: this.configFn.rgba(this.config.colors.gray, 0.4),
                  zeroLineWidth: 1,	
                  color: this.configFn.rgba(this.config.colors.gray, 0.1)
              }
          }]
      },           
      legend: {
          labels: {
              fontColor: this.configFn.rgba(this.config.colors.gray, 0.9),
          }
      }, 
      tooltips:{
          enabled:true,
          backgroundColor: this.configFn.rgba(this.config.colors.main, 0.6)
      }
  }




    }

  ngOnInit() {

    this.getAsistenciaDetalleEvento(this.evento.id);
 /*    this.id = Number(this.route.snapshot.params['id']);
    if (this.id != 0) {


    } */
  }

  getAsistenciaDetalleEvento(_idEvento:number){
    this._reporteServ.getAsistenciasXsocioXevento(_idEvento).subscribe(result => {
   //this.data=result;
   let AsistenciasSociosResponse:any[]=[];
   let data123:any[]=[];
   let labels:string[]=[];
   let data:any[]=[];
   Object.keys(result).forEach(function(key){
    let fila= [key,result[key]] 
    labels.push(key);
    data.push(result[key]); 
    data123.push(fila);
    AsistenciasSociosResponse.push({'socio': key, 'porcentaje': result[key]+'%'});
   })

   this.barChartLabels=labels;
   this.barChartData[0].data=data;
   this.data=data123;
   this.AsistenciasSociosEventoResponse =AsistenciasSociosResponse;
   this.mostrarGrafico=true;
  });


  
  }

  volver(){
    this.volverAsistencia.emit(false);
  }

public chartClicked(e:any):void {
  //console.log(e);
  }

  public chartHovered(e:any):void {
  //console.log(e);
  }

}
