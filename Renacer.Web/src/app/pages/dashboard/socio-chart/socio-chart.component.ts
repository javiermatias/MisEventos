import { Component, ViewEncapsulation } from '@angular/core';
import { AppConfig } from "../../../app.config";
import {ReporteServices} from '../../../resources/reporte.service';

@Component({
  selector: 'az-socio-chart',
  encapsulation: ViewEncapsulation.None,
  templateUrl: './socio-chart.component.html'
})
export class SocioChartComponent {
    public config:any;
    public configFn:any;

    public lineChartType:string = 'line';
    public lineChartLabels:Array<string>;
    public lineChartData:Array<any>;
    public lineChartColors:any[];
    public lineChartOptions:any;

    public pieChartType:string = 'pie';
    public pieChartLabels:Array<string>;
    public edadInferior:number = 21;
    public edadMedia:number = 35;
    public edadSuperior:number = 65;
    public pieChartData:Array<number>;
    public pieChartColors:any[];
    public pieChartOptions:any;
    public loading:boolean= true;

    constructor(private _appConfig:AppConfig,private _reporteServ:ReporteServices){
        this.config = this._appConfig.config;
        this.configFn = this._appConfig;       
    }  

    ngOnInit() { 

        var self = this;
        self.lineChartLabels = [];
        self.lineChartData = [
            {data: [], label:'Socios Activos' },
            {data: [], label:'Altas' },
            {data: [], label:'Bajas' },
        ];    

        self.pieChartLabels = ['Sin Datos',
        'Hasta ' + this.edadInferior + ' años',
        'Entre ' + this.edadInferior + ' y ' + this.edadMedia,
        'Entre ' + this.edadMedia + ' y ' + this.edadSuperior,
        'Mas de ' + this.edadSuperior];

        self.pieChartData = [0,0,0,0,0];
      
        this._reporteServ.getCrecimientoSocios({},(result:any) => {

            this.lineChartColors = [
                { 
                    borderWidth: 2,
                    backgroundColor: this.configFn.rgba(this.config.colors.info, 0.5),
                    borderColor: this.config.colors.info,
                    pointBorderColor: this.config.colors.default,
                    pointHoverBorderColor:  this.config.colors.info,
                    pointHoverBackgroundColor: this.config.colors.default,
                    hoverBackgroundColor:  this.config.colors.info
                },
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
                    backgroundColor: this.configFn.rgba(this.config.colors.danger, 0.5),
                    borderColor: this.config.colors.danger,
                    pointBorderColor: this.config.colors.default,
                    pointHoverBorderColor:  this.config.colors.danger,
                    pointHoverBackgroundColor: this.config.colors.default,
                    hoverBackgroundColor:  this.config.colors.danger
                }
            ];
            this.lineChartOptions = {
                 scales: {
                    yAxes: [{
                        ticks: {
                            fontColor: this.configFn.rgba(this.config.colors.gray, 0.7),
                            beginAtZero:true
                        },
                        gridLines: {
                            display:true,
                            zeroLineColor: this.configFn.rgba(this.config.colors.gray, 0.5),
                            zeroLineWidth: 1,	
                            color: this.configFn.rgba(this.config.colors.gray, 0.1)
                        }
                    }],
                    xAxes: [{
                        ticks: {
                            fontColor: this.configFn.rgba(this.config.colors.gray, 0.7)
                        },
                        gridLines: {
                            display:true,
                            zeroLineColor: this.configFn.rgba(this.config.colors.gray, 0.5),
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
                    backgroundColor: this.configFn.rgba(this.config.colors.main, 0.7)             
                }
            }
    
            var cantSocios = 0;
            for(var i = 0;i<result.length;i++){
                   this.lineChartLabels.push(result[i].fecha)

                   cantSocios = cantSocios + result[i].altas - result[i].bajas;

                   this.lineChartData[0].data.push(cantSocios);
                   this.lineChartData[1].data.push(result[i].altas);
                   this.lineChartData[2].data.push(result[i].bajas);
               }
        })

        this._reporteServ.getSociosPorEdad({},(result:any) =>{

            result.forEach(item => {
              
                 if(item.edad<self.edadInferior) 
                 self.pieChartData[1] = self.pieChartData[1] + item.count;
                
                 if(item.edad>=self.edadInferior && item.edad<=self.edadMedia) 
                 self.pieChartData[2] = self.pieChartData[2] + item.count;
                
                 if(item.edad>=self.edadMedia && item.edad<=self.edadSuperior) 
                 self.pieChartData[2] = self.pieChartData[3] + item.count;

                 if(item.edad>self.edadSuperior) 
                 self.pieChartData[3] = self.pieChartData[4] + item.count; 
                 
                 if(item.edad == null)
                 self.pieChartData[0] = self.pieChartData[0] + item.count; 
            });
          
            self.pieChartColors = [
                { 
                    backgroundColor: [
                        this.configFn.rgba(this.config.colors.default, 0.7),
                        this.configFn.rgba(this.config.colors.success, 0.7),
                        this.configFn.rgba(this.config.colors.warning, 0.7),
                        this.configFn.rgba(this.config.colors.info, 0.7)                  
                    ],
                    hoverBackgroundColor: [
                        this.config.colors.default,
                        this.config.colors.success,
                        this.config.colors.warning,
                        this.config.colors.info
                    ],
                    borderColor: this.config.colors.grayLight,
                    borderWidth: 1,
                    hoverBorderWidth: 3
                } 
            ];      
            self.pieChartOptions = {
                title: {
                    display: true,
                    text: 'Socios según Edad',
                    fontColor: this.config.colors.gray,
                    fontSize: 14,
                    fontStyle: 'normal'
                },
                legend: {
                    labels: {
                        fontColor: this.configFn.rgba(this.config.colors.gray, 0.9),
                    }
                }, 
                tooltips:{
                    enabled:true,
                    backgroundColor: this.configFn.rgba(this.config.colors.main, 0.7),
                    callbacks:{
                        label: function(tooltipItem, data) {
                            var dataset = data.datasets[tooltipItem.datasetIndex];
                            var total = dataset.data.reduce(function(previousValue, currentValue, currentIndex, array) {
                                return previousValue + currentValue;
                            });
                            var currentValue = dataset.data[tooltipItem.index];
                            var precentage = Math.floor(((currentValue/total) * 100)+0.5);  
                            return data.labels[tooltipItem.index] + ': ' + precentage + '%';
                        }
                    }
                }
            }
        })
    }

    public randomizeType():void {
        this.lineChartType = this.lineChartType === 'line' ? 'bar' : 'line';
        this.pieChartType = this.pieChartType === 'doughnut' ? 'pie' : 'doughnut';
    }

    public chartClicked(e:any):void {
       // console.log(e);
    }

    public chartHovered(e:any):void {
       // console.log(e);
    }

}
