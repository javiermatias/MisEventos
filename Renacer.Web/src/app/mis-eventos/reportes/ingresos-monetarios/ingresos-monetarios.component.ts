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


        let ingresos_en_meses = [
            {fecha: '2019-01', ingresoMatricula: 100, ingresoCuota: 120}
            , {fecha: '2019-02', ingresoMatricula: 30, ingresoCuota: 100}
            , {fecha: '2019-03', ingresoMatricula: 60, ingresoCuota: 90}
            ];
        // this._reporteServ.getCrecimientoSocios({}).subscribe(result => {
            // ingresos_en_meses = result;
            for (let i = 0; i < ingresos_en_meses.length; i++) {
                    this.lineChartLabels.push(ingresos_en_meses[i].fecha)
                    const  ingresosTotales = ingresos_en_meses[i].ingresoMatricula + ingresos_en_meses[i].ingresoCuota;
                    this.lineChartData[0].data.push(ingresosTotales);
                    this.lineChartData[1].data.push(ingresos_en_meses[i].ingresoMatricula);
                    this.lineChartData[2].data.push(ingresos_en_meses[i].ingresoCuota);
                }
            // });


        let result_getIngresosTipoEvento = [
            {cantidad: 3, nombre: 'Curso'}
            , {cantidad: 6, nombre: 'Taller'}
            , {cantidad: 8, nombre: 'Conferencia'}
            ];
            this.IngresosTipoEventoData = [];
            this.IngresosTipoEventoLabels = [];
            result_getIngresosTipoEvento.forEach(item => {
                this.IngresosTipoEventoData.push(item.cantidad);
                this.IngresosTipoEventoLabels.push(item.nombre);
                });

        this._reporteServ.getIngresosPorTipoEvento().subscribe(result => {
            result_getIngresosTipoEvento = result;
            this.ingresosPorTipoEventoOpt = this.config.pieChartOptions

            this.IngresosTipoEventoData = [];
            this.IngresosTipoEventoLabels = [];
            result_getIngresosTipoEvento.forEach(item => {
                if (item.cantidad == null) { item.cantidad = 0; }

                this.IngresosTipoEventoData.push(item.cantidad);
                this.IngresosTipoEventoLabels.push(item.nombre);
                });
        });



        this.IngresosTipoData = [];
        this.IngresosTipoLabels = [];
        const result_getIngresosTipo = [
              {cantidad: 13, nombre: 'Eventos'}
            , {cantidad: 8, nombre: 'Matrículas'}
            ];

        result_getIngresosTipo.forEach(item => {

            this.IngresosTipoData.push(item.cantidad);
            this.IngresosTipoLabels.push(item.nombre);
        });

        this._reporteServ.getIngresosPorTipo().subscribe(result => {
            this.ingresosPorTipoEventoOpt = this.config.pieChartOptions
            this.IngresosTipoData = [];
            this.IngresosTipoLabels = [];
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

