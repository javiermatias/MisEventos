import { Component, OnInit, Input } from '@angular/core';
import { AppConfig } from '../../../../app.config';
import { TablaGrafico } from '../../../../modelos/tabla-grafico';

@Component({
  selector: 'az-grafico-torta',
  templateUrl: './grafico-torta.component.html',
  styleUrls: ['./grafico-torta.component.scss']
})
export class GraficoTortaComponent implements OnInit {



  @Input() tituloGrafico:string;
  public config:any;
  public configFn:any;
  //public doughnutChartType:string = 'doughnut';
  @Input() ChartType:string; //doughnut, pie
  public ChartLegend:boolean = true;
  @Input() ChartLabels:string[]; //Leyendas
  @Input() ChartData:any; //Data
  public ChartColors:any[];
  public ChartOptions:any;
  
  @Input() tabla: TablaGrafico;
  IngresosTipoEventoResponse = [
    {cantidad: 3, nombre: 'Curso'}
  , {cantidad: 6, nombre: 'Taller'}
  , {cantidad: 8, nombre: 'Conferencia'}
  ];

  tablaConfig = {
    columnas: [
        {name: 'nombre', title: 'Nombre', type: 'text'}
      , {name: 'cantidad', title: 'Monto', type: 'money'}
    ]
  }


  constructor(private _appConfig:AppConfig) { 
    this.config = this._appConfig.config;
    this.configFn = this._appConfig;  
    this.ChartColors = [
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
  this.ChartOptions = {
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

  ngOnInit() {
  

    console.log(this.tabla);
    //this.mostrarGrafico=true;
  }

  public chartClicked(e:any):void {
    //console.log(e);
    }

    public chartHovered(e:any):void {
    //console.log(e);
    }

}
