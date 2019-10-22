import { Component, OnInit, ViewEncapsulation } from '@angular/core';
import { AppConfig } from '../../../../app.config';
import {ReporteServices} from '../../../../servicios/reporte.service';


@Component({
  selector: 'app-reporte-asistencias',
  templateUrl: './asistencias.component.html',
  styleUrls: ['./asistencias.component.scss']
})
export class AsistenciasComponent implements OnInit {

    public config: any;
    public configFn: any;

    public lineChartType = 'bar';
    public lineChartLabels: Array<string>;
    public lineChartData: Array<any>;
    public lineChartColors: any[];
    public lineChartOptions: any;

    public pieChartType = 'pie';

    public AsistenciasTipoEventoLabels: Array<string>;
    public AsistenciasTipoEventoData: Array<number>;

    public InasistenciasTipoEventoLabels: Array<string>;
    public InasistenciasTipoEventoData: Array<number>;

    public IngresosTipoEventoLabels: Array<string>;
    public IngresosTipoEventoData: Array<number>;

    public pieChartColors: any[];
    public pieChartOptions: any;
    public loading = true;


    constructor(private _appConfig: AppConfig,
                private _reporteServ: ReporteServices) {
        this.config = this._appConfig.config;
        this.configFn = this._appConfig;
        this.lineChartColors = this.config.lineChartColors;
        this.lineChartOptions = this.config.lineChartOptions;
        this.pieChartOptions = this.config.pieChartOptions;
        this.pieChartColors = this.config.pieChartColors;
    }

    ngOnInit() {
    this.graficarAsistenciasPorDiaDeLaSemana();
    this.graficarAsistencias();
    }

    graficarAsistencias() {
        this.AsistenciasTipoEventoData = [1];
        this.AsistenciasTipoEventoLabels = ['Cargando...'];
        this.InasistenciasTipoEventoData = [1];
        this.InasistenciasTipoEventoLabels = ['Cargando...'];

        this._reporteServ.getAsistenciasPorTipoEvento().subscribe(result => {
            this.AsistenciasTipoEventoData = [];
            this.AsistenciasTipoEventoLabels = [];
            this.InasistenciasTipoEventoData = [];
            this.InasistenciasTipoEventoLabels = [];
            result.forEach(item => {
                this.AsistenciasTipoEventoData.push(item.asistencias);
                this.AsistenciasTipoEventoLabels.push(item.nombre);
                this.InasistenciasTipoEventoData.push(item.inscriptos - item.asistencias);
                this.InasistenciasTipoEventoLabels.push(item.nombre);

                });
            });
    }


    graficarAsistenciasPorDiaDeLaSemana() {
        this.lineChartLabels = ['Cargando...'];
        this.lineChartData = [
            {data: [], label: 'cargando...' }
        ];

        this._reporteServ.graficarAsistenciasPorDiaDeLaSemana().subscribe(result => {
            this.lineChartData = [
                {data: [], label: 'dias' }
            ];

            this.lineChartLabels = [];
            result.forEach(item => {
                this.lineChartLabels.push(item.dia);
                this.lineChartData[0].data.push(item.cantidad);
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
  
  