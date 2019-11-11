import { Component, ViewEncapsulation, OnInit } from '@angular/core';
import { AppConfig } from '../../../app.config';
import {ReporteServices} from '../../../servicios/reporte.service';
import {CsvServices, RequestCsv} from '../../../servicios/csv.service';

@Component({
  selector: 'az-socio-chart',
  encapsulation: ViewEncapsulation.None,
  templateUrl: './socio-chart.component.html'
})
export class SocioChartComponent
            implements OnInit {

    public config:any;
    public configFn:any;

    public lineChartType:string = 'line';
    public lineChartLabels:Array<string>;
    public lineChartColors:any[];
    public lineChartOptions:any;

    public pieChartType:string = 'pie';
    public edadInferior:number = 21;
    public edadMedia:number = 35;
    public edadSuperior:number = 65;
    public pieChartData:Array<number>;
    public pieChartColors:any[];
    public pieChartOptions:any;

    crecimientoSocios: any[];
    sociosPorEdad: any[];

    lineChartData = [
        {data: [], label: 'Socios Activos' },
        {data: [], label: 'Altas' },
        {data: [], label: 'Bajas' },
    ];
    pieChartLabels = ['Sin Datos',
    'Hasta ' + this.edadInferior + ' años',
    'Entre ' + this.edadInferior + ' y ' + this.edadMedia,
    'Entre ' + this.edadMedia + ' y ' + this.edadSuperior,
    'Mas de ' + this.edadSuperior];

    tablaEdadConfig = {
        columnas: [
            {name: 'nombre', title: 'Rango', type: 'text'}
          , {name: 'cantidad', title: 'Cantidad', type: 'text'}
        ]
      }
      tablaCrecimientoSociosConfig = {
        columnas: [
            {name: 'fecha', title: 'Mes', type: 'text'}
          , {name: 'altas', title: 'Altas', type: 'text'}
          , {name: 'bajas', title: 'Bajas', type: 'text'}
        ]
      }

    constructor(private _appConfig: AppConfig,
        private csvServ: CsvServices,
        private _reporteServ: ReporteServices) {
        this.config = this._appConfig.config;
        this.configFn = this._appConfig;
    }

    ngOnInit() {

        const self = this;
        this.lineChartLabels = [];
        this.pieChartData = [0, 0, 0, 0, 0];

        this._reporteServ.getCrecimientoSocios({}).subscribe(result => {

            this.crecimientoSocios = result;
            this.lineChartColors = this.config.lineChartColors;
            this.lineChartOptions = this.config.lineChartOptions;

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

            this.sociosPorEdad = result;
            result.forEach(item => {
                 if (item.edad<self.edadInferior) 
                 self.pieChartData[1] = self.pieChartData[1] + item.count;
                
                 if (item.edad>=self.edadInferior && item.edad<=self.edadMedia) 
                 self.pieChartData[2] = self.pieChartData[2] + item.count;
                
                 if (item.edad>=self.edadMedia && item.edad<=self.edadSuperior) 
                 self.pieChartData[2] = self.pieChartData[3] + item.count;

                 if (item.edad>self.edadSuperior) 
                 self.pieChartData[3] = self.pieChartData[4] + item.count; 
                 
                 if (item.edad == null)
                 self.pieChartData[0] = self.pieChartData[0] + item.count; 
            });

            this.sociosPorEdad = [];
            this.pieChartLabels.forEach((x, indice) => {
                this.sociosPorEdad.push({'nombre': x, 'cantidad': this.pieChartData[indice] })
            })

            this.pieChartColors = this.config.pieChartColors;
            this.pieChartOptions = this.config.pieChartOptions;
        })
    }

    public randomizeType(): void {
        this.lineChartType = this.lineChartType === 'line' ? 'bar' : 'line';
        this.pieChartType = this.pieChartType === 'doughnut' ? 'pie' : 'doughnut';
    }

    public chartClicked(e: any): void {
       // console.log(e);
    }

    public chartHovered(e:any):void {
       // console.log(e);
    }

}