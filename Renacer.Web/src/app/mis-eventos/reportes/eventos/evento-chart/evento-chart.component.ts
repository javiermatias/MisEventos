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

    public pieChartType = 'pie';
    public pieChartLabels: Array<string>;
    public pieChartData: Array<number>;
    public pieChartOptions: any;
    public loading = true;


    public pieChartColors: any[];


    constructor(private _appConfig: AppConfig, private _reporteServ: ReporteServices) {
        this.config = this._appConfig.config;
        this.configFn = this._appConfig;

        this.pieChartColors = [
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

    }

    ngOnInit() {
        const self = this;
        self.pieChartData = [];
        self.pieChartLabels = [];
        this._reporteServ.getEventosPortipo().subscribe(result => this.buildChart(result));
        this.randomizeType();
    }

public buildChart(result) {
        this.pieChartData = [];
        this.pieChartLabels = [];
        result.forEach(item => {
            this.pieChartData.push(item.cantidad);
            this.pieChartLabels.push(item.nombre);
          });


        this.pieChartOptions = {
            title: {
                display: true,
                text: 'Tipos de Eventos',
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
                        console.log(tooltipItem, data);
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
}

    public randomizeType(): void {
        this.pieChartType = this.pieChartType === 'doughnut' ? 'pie' : 'doughnut';
    }

    public chartClicked(e: any): void {
       // console.log(e);
    }

    public chartHovered(e: any): void {
       // console.log(e);
    }

}
