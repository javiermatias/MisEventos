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

    public IngresosTipoLabels: Array<string>;
    public IngresosTipoData: Array<number>;

    public IngresosTipoEventoLabels: Array<string>;
    public IngresosTipoEventoData: Array<number>;

    public pieChartColors: any[];
    public ingresosPorTipoEventoOpt: any;
    IngresosTipoEventoResponse = [
          {cantidad: 3, nombre: 'Curso'}
        , {cantidad: 6, nombre: 'Taller'}
        , {cantidad: 8, nombre: 'Conferencia'}
        ];
    IngresosEnElTiempoResponse = [
          {fecha: '2019-01', matriculas: 100, eventos: 120}
        , {fecha: '2019-02', matriculas: 30, eventos: 100}
        , {fecha: '2019-03', matriculas: 60, eventos: 90}
        ];
    IngresosPorTipoResponse = [
            {cantidad: 13, nombre: 'Eventos'}
          , {cantidad: 8, nombre: 'Matrículas'}
          ];

    tablaConfig = {
        columnas: [
            {name: 'nombre', title: 'Nombre', type: 'text'}
          , {name: 'cantidad', title: 'Monto', type: 'money'}
        ]
      }
    tablaIngresosEnElTiempo = {
        columnas: [
            {name: 'fecha', title: 'Mes', type: 'text'}
          , {name: 'matriculas', title: 'Ingreso por matriculas', type: 'money'}
          , {name: 'eventos', title: 'Ingreso por eventos', type: 'money'}
        ]
      }


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

        this._reporteServ.getIngresosEnElTiempo().subscribe(result => {
            this.IngresosEnElTiempoResponse = result;
            for (let i = 0; i < result.length; i++) {
                    this.lineChartLabels.push(result[i].fecha)
                    const  ingresosTotales = result[i].matriculas + result[i].eventos;
                    this.lineChartData[0].data.push(ingresosTotales);
                    this.lineChartData[1].data.push(result[i].matriculas);
                    this.lineChartData[2].data.push(result[i].eventos);
                }
        });


        this.IngresosTipoEventoData = [];
        this.IngresosTipoEventoLabels = [];
        this.IngresosTipoEventoResponse.forEach(item => {
            this.IngresosTipoEventoData.push(item.cantidad);
            this.IngresosTipoEventoLabels.push(item.nombre);
            });

        this._reporteServ.getIngresosPorTipoEvento().subscribe(result => {
            this.IngresosTipoEventoResponse = result;
            this.ingresosPorTipoEventoOpt = this.config.pieChartOptions

            this.IngresosTipoEventoData = [];
            this.IngresosTipoEventoLabels = [];
            this.IngresosTipoEventoResponse.forEach(item => {
                if (item.cantidad == null) { item.cantidad = 0; }

                this.IngresosTipoEventoData.push(item.cantidad);
                this.IngresosTipoEventoLabels.push(item.nombre);
                });
        });


        this.IngresosTipoData = [];
        this.IngresosTipoLabels = [];

        this.IngresosPorTipoResponse.forEach(item => {

            this.IngresosTipoData.push(item.cantidad);
            this.IngresosTipoLabels.push(item.nombre);
        });

        this._reporteServ.getIngresosPorTipo().subscribe(result => {
            this.ingresosPorTipoEventoOpt = this.config.pieChartOptions
            this.IngresosTipoData = [];
            this.IngresosTipoLabels = [];
            this.IngresosPorTipoResponse = result;

            result.forEach(item => {
                if (item.monto == null) { item.monto = 0; }
                this.IngresosTipoData.push(item.monto);
                this.IngresosTipoLabels.push(item.nombre);
                });
        });

    }

    public randomizeType(): void {
        this.lineChartType = this.lineChartType === 'line' ? 'bar' : 'line';
    }

    public chartClicked(e: any): void {
       // console.log(e);
    }

    public chartHovered(e: any): void {
       // console.log(e);
    }

}

