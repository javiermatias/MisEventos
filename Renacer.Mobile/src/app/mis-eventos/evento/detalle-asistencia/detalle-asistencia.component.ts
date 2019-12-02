import { Component, OnInit, Input } from '@angular/core';
import { AsistenciaDetalleEventoServices } from '../../../servicios/asistencia.service';
import { DetalleEvento } from '../../../servicios/evento.service';
import { AsistenciaDetalleEvento } from '../../../modelos/asistencia-detalle-evento';

@Component({
  selector: 'az-detalle-asistencia',
  templateUrl: './detalle-asistencia.component.html',
  styleUrls: ['./detalle-asistencia.component.scss']
})
export class DetalleAsistenciaComponent implements OnInit {

  searchText = '';

  constructor(private asistenciaServ:AsistenciaDetalleEventoServices) { }

  @Input() detalleEvento: DetalleEvento;

  listaAsistencia: AsistenciaDetalleEvento[];
  

  ngOnInit() {
    this.getAsistenciasDetalleEvento();
  }

  getAsistenciasDetalleEvento(){

    this.asistenciaServ.
    query({'idEvento':this.detalleEvento.id,'id':this.detalleEvento.idEvento}).
    subscribe(result => {
      this.listaAsistencia = result;      
      console.log(result)
     });
  }

  volver(){
    
  }

}
