import { Component, ViewEncapsulation, OnInit, NgZone } from '@angular/core';
import { AppConfig } from '../../../../app.config';
import { ReporteServices } from '../../../../servicios/reporte.service';
import { CsvServices, RequestCsv } from '../../../../servicios/csv.service';

@Component({
    selector: 'az-socio-chart',
    encapsulation: ViewEncapsulation.None,
    templateUrl: './socio-chart.component.html'
})
export class SocioChartComponent
    implements OnInit {


          //Socios Mas activos
  title = 'Actividad Socios';
  type = 'BubbleChart';

  /* A: label for each bubble -
   B: numeric data on horizontal x-axis -
    C: numeric data on vertical y-axis -
     D: text data to represent bubble color (each category will appear as a new color, or leave blank to display all as one color)
     - E: numeric data to represent bubble size */
 
 data=[];
/*      data = [
     ["Jose",5,33,'Soltero',70],
     ["Mohan",3,59,'Soltero',50],
     ["Ramesh",9,69,'Viudo',40],
     ["Julie",7,43,'Casado',40],
     ["Sohan", 2,59,'Casado',20],
     ["Sohan", 1,59,'Soltero',10]
  ]; */
  columnNames = ['Nombre', 'Eventos','Edad','Estado Civil','Asistencias'];
  options={};
  width = 950;
  height = 800;
 mostrarBubble=false;
/*   options = { 

      sizeAxis: {
        maxSize: 90,
        minSize: 20
      },
      hAxis: {title: 'Eventos',
        				
                //remove viewWindow and see a bubble is cutted off
                
        				viewWindow: { 
            			min: 0,
            			max: 10
           			 }
    },
    vAxis: {title: 'Edad',

//remove viewWindow and see a bubble is cutted off

    viewWindow: { 
    min: 30,
    max: 90
    }
}
}; */
  



  //
    public config: any;
    public configFn: any;

    public lineChartType: string = 'line';
    public lineChartLabels: Array<string>;
    public lineChartColors: any[];
    public lineChartOptions: any;

    public pieChartType: string = 'pie';
    public edadInferior: number = 21;
    public edadMedia: number = 35;
    public edadSuperior: number = 65;
    public pieChartData: Array<number>;
    public pieChartColors: any[];
    public pieChartOptions: any;

    crecimientoSocios: any[];
    sociosPorEdad: any[];

    lineChartData = [
        { data: [], label: 'Socios Activos' },
        { data: [], label: 'Altas' },
        { data: [], label: 'Bajas' },
    ];
    pieChartLabels = ['Sin Datos',
        'Hasta ' + this.edadInferior + ' años',
        'Entre ' + this.edadInferior + ' y ' + this.edadMedia,
        'Entre ' + this.edadMedia + ' y ' + this.edadSuperior,
        'Mas de ' + this.edadSuperior];

    tablaEdadConfig = {
        columnas: [
            { name: 'nombre', title: 'Rango', type: 'text' }
            , { name: 'cantidad', title: 'Cantidad', type: 'text' }
        ]
    }
    tablaCrecimientoSociosConfig = {
        columnas: [
            { name: 'fecha', title: 'Mes', type: 'text' }
            , { name: 'altas', title: 'Altas', type: 'text' }
            , { name: 'bajas', title: 'Bajas', type: 'text' }
        ]
    }

    constructor(private _appConfig: AppConfig,
        private csvServ: CsvServices,
        private _reporteServ: ReporteServices,
        private ngZone: NgZone) {
        this.config = this._appConfig.config;
        this.configFn = this._appConfig;
    }

    ngOnInit() {
       this.getCrecimientoSocios();
       this.getSociosPorEdad();
       this.getSociosMasActivos();
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

    public getCrecimientoSocios() {
        this._reporteServ.getCrecimientoSocios({}).subscribe(result => {
            this.ngZone.run(() => {
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
            });

            setTimeout(() => { this.randomizeType(); }, 100);
        })
    }

    public getSociosPorEdad() {
        this.lineChartLabels = [];
        this.pieChartData = [0, 0, 0, 0, 0];
        this.sociosPorEdad = [];
        this._reporteServ.getSociosPorEdad({}).subscribe(result => {

            this.ngZone.run(() => {
                this.sociosPorEdad = result;
                result.forEach(item => {
                    if (item.edad == null) {
                        this.pieChartData[0] = this.pieChartData[0] + item.count;
                    }

                    if (item.edad < this.edadInferior) {
                        this.pieChartData[1] = this.pieChartData[1] + item.count;
                    }

                    if (item.edad >= this.edadInferior && item.edad <= this.edadMedia) {
                        this.pieChartData[2] = this.pieChartData[2] + item.count;
                    }

                    if (item.edad >= this.edadMedia && item.edad <= this.edadSuperior) {
                        this.pieChartData[3] = this.pieChartData[3] + item.count;
                    }

                    if (item.edad > this.edadSuperior) {
                        this.pieChartData[4] = this.pieChartData[4] + item.count;
                    }
                });

                this.sociosPorEdad = [];
                this.pieChartLabels.forEach((x, indice) => {
                    this.sociosPorEdad.push({ 'nombre': x, 'cantidad': this.pieChartData[indice] })
                })

                this.pieChartColors = this.config.pieChartColors;
                this.pieChartOptions = this.config.pieChartOptions;
            });
        })
    }

    public getSociosMasActivos(){

        this._reporteServ.getSociosMasActivos().subscribe(result => {
        console.log(result);

        //var max_of_array = Math.max.apply(Math, result.Edad);
          var max_of_array = Math.max.apply(Math, result.map(function(o) { 
                    return o.Edad;  
                }));

                var min_of_array = Math.min.apply(Math, result.map(function(o) { 
                    return o.Edad;  
                }));
              max_of_array += 10;
            min_of_array-=10;
           max_of_array= Math.round(max_of_array / 10) * 10;
            min_of_array= Math.round(min_of_array / 10) * 10;
        this.options = { 
      sizeAxis: {
        maxSize: 70,
        minSize: 30
      },
      hAxis: 
      {title: 'Eventos',        		
        				viewWindow: { 
            			min: 0,
            			max: 10
           			 }
    },
    vAxis: {title: 'Edad',
    viewWindow: { 
    min: min_of_array,
    max: max_of_array
    }
}
};
  
          
       result.forEach(element => {
           let fila =[element.Nombre,element.Eventos,element.Edad,element.Civil,element.asistencias];
           this.data.push(fila);
       });
        //this.data=result;
        this.mostrarBubble=true;
        
        
        

            
        });







    }


}
