import { Component, OnInit } from '@angular/core';
import { EncargadoEventoServices, EncargadoEvento } from '../../../servicios/encargado.service';
import { AsistenciaEventoServices } from '../../../servicios/asistencia.service';
import { AsistenciaEvento } from '../../../modelos/asistencia-evento';
import { Evento, DetalleEventoServices, DetalleEvento } from '../../../servicios/evento.service';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'az-asistencia-reporte',
  templateUrl: './asistencia-reporte.component.html',
  styleUrls: ['./asistencia-reporte.component.scss']
})
export class AsistenciaReporteComponent implements OnInit {

  public encargados:EncargadoEvento[];
  public encargado:EncargadoEvento;
  public eventosAsistencia:AsistenciaEvento[];

  public detalleEvento:DetalleEvento[];

  public eventosAsistenciaOriginal:AsistenciaEvento[];

  public eventoSeleccionado:Evento;
  public listaAsistencias:boolean=false;

  public verAsistenciaSocios:boolean=false;

  public asistenciasEncargado:boolean=false;
  public estado:string="Todos";
  constructor(private encargadoServ:EncargadoEventoServices,
    private asistenciaServ:AsistenciaEventoServices,
    private toastrService: ToastrService,
    private _detalleEvento:DetalleEventoServices) { }

  ngOnInit() {
       this.getEncargados();
       this.getAsistenciasCursos();
     
  }

  filtrar(){
    if(this.encargado == null &&  this.estado == null ){
        this.toastrService.error('Debe elegir un filtro');
        return;
    }
    this.eventosAsistencia = this.eventosAsistenciaOriginal;
    if(this.encargado != null ){
      this.eventosAsistencia = this.eventosAsistencia.filter((item: AsistenciaEvento) => {
        return item.evento.idEncargado == this.encargado.id;
    });

    if(this.estado != null && this.estado != "Todos"){
      this.eventosAsistencia = this.eventosAsistencia.filter((item: AsistenciaEvento) => {
        return item.evento.estado == this.estado;
    
    });
    }


    
  }
}

  getAsistenciasCursos(){

    this.asistenciaServ.query({}).subscribe(result => {
      this.eventosAsistencia = result;
      this.eventosAsistenciaOriginal=result;
      //console.log(result);      
      this.listaAsistencias=true;
     });
  }
  getEncargados(){
    this.encargadoServ.query({}).subscribe(items => {
      this.encargados = items;    
    });
  }
 

  cambioEvento(item:Evento){
    this.eventoSeleccionado=item;
    this.listaAsistencias=false;
    this.verAsistenciaSocios=true;
  }

  volverAsistencia(cancelar: boolean){
    this.verAsistenciaSocios=false;
    this.listaAsistencias=true;
    //this.listaAsistencias=true;
    //this.verListaAsistencia=false;

  }


  verDetalle(item:Evento){
    this.listaAsistencias=false;
    this.getAsistenciaDetalleEvento(item);
  }

  getAsistenciaDetalleEvento(item:Evento){
    this._detalleEvento.query(
      {'idEvento':item.id,
      'idEncargado':item.idEncargado}).subscribe
      (items => {          
          this.detalleEvento= items;
          this.asistenciasEncargado=true;
        //console.log(items);
    });


  }

  volver(){
    this.asistenciasEncargado=false;
    this.listaAsistencias=true;
  }
}
