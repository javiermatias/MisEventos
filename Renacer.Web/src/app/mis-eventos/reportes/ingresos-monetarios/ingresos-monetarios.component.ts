import { Component, OnInit, ViewEncapsulation } from '@angular/core';
import { AppConfig } from '../../../app.config';
import {ReporteServices} from '../../../servicios/reporte.service';


@Component({
  selector: 'app-ingresos-monetarios',
  templateUrl: './ingresos-monetarios.component.html',
  styleUrls: ['./ingresos-monetarios.component.scss']
})
export class IngresosMonetariosComponent implements OnInit {

    public config: any;
    public configFn: any;

    public lineChartType = 'line';
    public lineChartLabels: Array<string>;
    public lineChartData: Array<any>;
    public lineChartColors: any[];
    public lineChartOptions: any;

    public pieChartType = 'pie';
    public pieChartLabels: Array<string>;
    public pieChartData: Array<number>;
    public pieChartColors: any[];
    public ingresosPorTipoEventoOpt: any;
    public loading = true;


    constructor(private _appConfig: AppConfig, private _reporteServ: ReporteServices) {
        this.config = this._appConfig.config;
        this.configFn = this._appConfig;

        this.lineChartColors = this.config.lineChartColors;
        this.lineChartOptions = this.config.lineChartOptions;

        this.pieChartColors = this.config.pieChartColors;
        this.ingresosPorTipoEventoOpt = this.config.pieChartOptions;

    }

    ngOnInit() {

        this.lineChartLabels = [];
        this.lineChartData = [
            {data: [], label: 'Total' },
            {data: [], label: 'Matriculas' },
            {data: [], label: 'Cuotas' }
        ];

        this.pieChartLabels = [];
        this.pieChartData = [0, 0, 0, 0, 0];

        // this._reporteServ.getCrecimientoSocios({}).subscribe(result => {

        const ingresos_en_meses = [
          {fecha: '2019-01', ingresoMatricula: 100, ingresoCuota: 120}
          , {fecha: '2019-02', ingresoMatricula: 30, ingresoCuota: 100}
          , {fecha: '2019-03', ingresoMatricula: 60, ingresoCuota: 90}
        ];

          for (let i = 0; i < ingresos_en_meses.length; i++) {
                  this.lineChartLabels.push(ingresos_en_meses[i].fecha)
                  const  ingresosTotales = ingresos_en_meses[i].ingresoMatricula + ingresos_en_meses[i].ingresoCuota;
                  this.lineChartData[0].data.push(ingresosTotales);
                  this.lineChartData[1].data.push(ingresos_en_meses[i].ingresoMatricula);
                  this.lineChartData[2].data.push(ingresos_en_meses[i].ingresoCuota);
              }
        // })

        // this._reporteServ.getIngresosTipoEvento({}).subscribe(result => {
          const result_getIngresosTipoEvento = [
            {cantidad: 3, nombre: 'Prueba 1'}
            , {cantidad: 6, nombre: 'Prueba 2'}
            , {cantidad: 8, nombre: 'Prueba 3'}
          ];
          this.ingresosPorTipoEventoOpt = this.config.pieChartOptions

            this.pieChartData = [];
            this.pieChartLabels = [];
            result_getIngresosTipoEvento.forEach(item => {
                this.pieChartData.push(item.cantidad);
                this.pieChartLabels.push(item.nombre);
              });


        // })
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

