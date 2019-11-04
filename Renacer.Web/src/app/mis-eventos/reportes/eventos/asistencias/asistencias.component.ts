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
    public AsistenciasPorDiaDeLaSemanaData: Array<any>;
    public lineChartColors: any[];
    public lineChartOptions: any;

    AsistenciasPorDiaDeLaSemanaResponse: any;

    public pieChartType = 'pie';

    public AsistenciasTipoEventoLabels: Array<string>;
    public AsistenciasTipoEventoData: Array<number>;
    AsistenciasTipoEventoResponse: any;

    public InasistenciasTipoEventoLabels: Array<string>;
    public InasistenciasTipoEventoData: Array<number>;
    InasistenciasTipoEventoResponse: any;

    public pieChartColors: any[];
    public pieChartOptions: any;
    public loading = true;


    tablaConfig = {
        columnas: [
            {name: 'nombre', title: 'Nombre', type: 'text'}
          , {name: 'cantidad', title: 'Cantidad', type: 'text'}
        ]
      }

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

            this.AsistenciasTipoEventoResponse = [];
            this.InasistenciasTipoEventoResponse = [];

            result.forEach(item => {
                this.AsistenciasTipoEventoData.push(item.asistencias);
                this.AsistenciasTipoEventoLabels.push(item.nombre);
                this.InasistenciasTipoEventoData.push(item.inscriptos - item.asistencias);
                this.InasistenciasTipoEventoLabels.push(item.nombre);


                this.AsistenciasTipoEventoResponse.push({'nombre': item.nombre, 'cantidad': item.asistencias});
                this.InasistenciasTipoEventoResponse.push({'nombre': item.nombre, 'cantidad': item.inscriptos - item.asistencias});
                });
            });
    }


    graficarAsistenciasPorDiaDeLaSemana() {
        this.lineChartLabels = ['Cargando...'];
        this.AsistenciasPorDiaDeLaSemanaData = [
            {data: [], label: 'cargando...' }
        ];

        this._reporteServ.graficarAsistenciasPorDiaDeLaSemana().subscribe(result => {
            this.AsistenciasPorDiaDeLaSemanaData = [
                {data: [], label: 'dias' }
            ];

            this.AsistenciasPorDiaDeLaSemanaResponse = [];

            this.lineChartLabels = [];
            result.forEach(item => {
                this.lineChartLabels.push(item.dia);
                this.AsistenciasPorDiaDeLaSemanaData[0].data.push(item.cantidad);
                this.AsistenciasPorDiaDeLaSemanaResponse.push({'nombre': item.dia, 'cantidad': item.cantidad});
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

