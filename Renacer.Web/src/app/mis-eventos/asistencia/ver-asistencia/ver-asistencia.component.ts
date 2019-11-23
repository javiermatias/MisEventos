import { Component, OnInit, Input, EventEmitter, Output } from '@angular/core';
import { AsistenciaSocioServices } from '../../../servicios/asistenciaSocio.service';
import { DetalleEvento } from '../../../servicios/evento.service';
import { AsistenciaDetalleEventoServices } from '../../../servicios/asistencia.service';
import { AsistenciaDetalleEvento } from '../../../modelos/asistencia-detalle-evento';

@Component({
  selector: 'az-ver-asistencia',
  templateUrl: './ver-asistencia.component.html',
  styleUrls: ['./ver-asistencia.component.scss']
})
export class VerAsistenciaComponent implements OnInit {

  constructor(private asistenciaServ:AsistenciaDetalleEventoServices) { }

  @Input() detalleEvento: DetalleEvento;

  @Output() volverAsistencia= new EventEmitter<boolean>();

  listaAsistencia: AsistenciaDetalleEvento[];

  mostrarGrilla=false;

  ngOnInit() {
    console.log("detalleEvento"+this.detalleEvento)
    this.getAsistenciasDetalleEvento();
  }

  getAsistenciasDetalleEvento(){

    this.asistenciaServ.
    query({'idEvento':this.detalleEvento.idEvento,'id':this.detalleEvento.id}).
    subscribe(result => {
      this.listaAsistencia = result;      
      this.mostrarGrilla=true;
     });
  }

  volver(){
    this.volverAsistencia.emit(false);
  }

}
