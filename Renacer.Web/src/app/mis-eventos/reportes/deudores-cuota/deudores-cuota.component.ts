import { Component, OnInit } from '@angular/core';
import { EventoServices, Evento, InscripcionServices, Inscripcion } from '../../../servicios/evento.service';
import { Observable } from 'rxjs';
import { DeudaCuotaServices } from '../../../servicios/deudaCuota.service';
import { DeudaCuota } from '../../../modelos/deuda-cuota';
import { AppConfig } from '../../../app.config';

@Component({
  selector: 'az-deudores-cuota',
  templateUrl: './deudores-cuota.component.html'
})
export class DeudoresCuotaComponent implements OnInit {
  public eventos :Evento[];
  public evento :Evento;

  listaDeudas:Array<DeudaCuota>;

  showDeudores= false;
  
  public idEvento:number;

//Chart
   public config:any;
    public configFn:any;
    public doughnutChartType:string = 'doughnut';
    public pieChartType:string = 'pie';
    public doughnutChartLegend:boolean = true;
    public deudodoresChartLabels:string[];
    public deudodoresChartData:any;
    public deudodoresChartColors:any[];
    public deudodoresChartOptions:any;

  constructor(private _itemsService:EventoServices, private deudaServ:DeudaCuotaServices,private _appConfig:AppConfig ) {
    this.config = this._appConfig.config;
    this.configFn = this._appConfig; 
   }

  ngOnInit() {
   this.getEventos();

  //--- Doughnut/Pie Chart ---
  this.deudodoresChartLabels = [];
  this.deudodoresChartData = [];
  this.deudodoresChartColors = [
      { 
          backgroundColor: [
              this.configFn.rgba(this.config.colors.success, 0.6),
              this.configFn.rgba(this.config.colors.warning, 0.6),
              this.configFn.rgba(this.config.colors.danger, 0.6)                  
          ],
          hoverBackgroundColor: [
              this.config.colors.success,
              this.config.colors.warning,
              this.config.colors.danger
          ],
          borderColor: this.config.colors.default,
          borderWidth: 1,
          hoverBorderWidth: 3
      } 
  ]; 
  this.deudodoresChartOptions = {
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





  }

  getEventos(){

    
   this._itemsService.query({'search':' '}).subscribe(items => {
     
    this.eventos = items;
            
    });
    
  }

  eventoSeleccionado(){
    //console.log(this.idEvento);
    //this.evento =  this.eventos.find(x => x.id == this.idEvento);
    //console.log(this.evento);
    this.traerDeudores(this.idEvento);
  }

  

  traerDeudores(_idEvento:number){
  
    this.deudaServ.query({'idEvento':_idEvento}).subscribe(items => {
      this.listaDeudas = items;
      this.deudodoresChartLabels = [];
      this.deudodoresChartData = [];    
      this.listaDeudas.forEach(deuda => {
        this.deudodoresChartLabels.push(deuda.nombreCuota);
        this.deudodoresChartData.push(deuda.listaSocios.length);
      });
     // this.baseChart.update();
      this.showDeudores=true;
      }
     );
    
}

public chartClicked(e:any):void {
  //console.log(e);
  }

  public chartHovered(e:any):void {
  //console.log(e);
  }

}
