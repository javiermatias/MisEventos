import { Component, ViewEncapsulation, OnInit } from '@angular/core';
import { AppConfig } from '../../../../app.config';
import {ReporteServices} from '../../../../servicios/reporte.service';

@Component({
  selector: 'app-evento-chart',
  encapsulation: ViewEncapsulation.None,
  templateUrl: './evento-chart.component.html'
})
export class EventoChartComponent implements OnInit {
    public config: any;
    public configFn: any;

    public lineChartType = 'line';
    public lineChartLabels: Array<string>;
    public lineChartData: Array<any>;
    public lineChartColors: any[];
    public lineChartOptions: any;

    public pieChartType = 'pie';
    public pieChartLabels: Array<string>;
    public edadInferior = 21;
    public edadMedia = 35;
    public edadSuperior = 65;
    public pieChartData: Array<number>;
    public pieChartColors: any[];
    public pieChartOptions: any;
    public loading = true;

    constructor(private _appConfig: AppConfig, private _reporteServ: ReporteServices) {
        this.config = this._appConfig.config;
        this.configFn = this._appConfig;
    }

    ngOnInit() {

        const self = this;
        self.lineChartLabels = [];
        self.lineChartData = [
            {data: [], label: 'Socios Activos' },
            {data: [], label: 'Altas' },
            {data: [], label: 'Bajas' },
        ];

        self.pieChartLabels = ['Sin Datos',
        'Hasta ' + this.edadInferior + ' años',
        'Entre ' + this.edadInferior + ' y ' + this.edadMedia,
        'Entre ' + this.edadMedia + ' y ' + this.edadSuperior,
        'Mas de ' + this.edadSuperior];

        self.pieChartData = [0, 0, 0, 0, 0];

        this._reporteServ.getCrecimientoSocios({}).subscribe(result => {

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
                            beginAtZero: true
                        },
                        gridLines: {
                            display: true,
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
                            display: true,
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
                tooltips: {
                    enabled: true,
                    backgroundColor: this.configFn.rgba(this.config.colors.main, 0.7)
                }
            }

            let cantSocios = 0;
            for (let i = 0; i < result.length; i++) {
                   this.lineChartLabels.push(result[i].fecha)

                   cantSocios = cantSocios + result[i].altas - result[i].bajas;

                   this.lineChartData[0].data.push(cantSocios);
                   this.lineChartData[1].data.push(result[i].altas);
                   this.lineChartData[2].data.push(result[i].bajas);
               }
        })

        this._reporteServ.getSociosPorEdad({}).subscribe(result => {

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
                tooltips: {
                    enabled: true,
                    backgroundColor: this.configFn.rgba(this.config.colors.main, 0.7),
                    callbacks: {
                        label: function(tooltipItem, data) {
                            const dataset = data.datasets[tooltipItem.datasetIndex];
                            const total = dataset.data.reduce(function(previousValue, currentValue, currentIndex, array) {
                                return previousValue + currentValue;
                            });
                            const currentValue = dataset.data[tooltipItem.index];
                            const precentage = Math.floor(((currentValue / total) * 100) + 0.5);
                            return data.labels[tooltipItem.index] + ': ' + precentage + '%';
                        }
                    }
                }
            }
        })
    }

    public randomizeType(): void {
        this.lineChartType = this.lineChartType === 'line' ? 'bar' : 'line';
        this.pieChartType = this.pieChartType === 'doughnut' ? 'pie' : 'doughnut';
    }

    public chartClicked(e: any): void {
       // console.log(e);
    }

    public chartHovered(e: any): void {
       // console.log(e);
    }

}
