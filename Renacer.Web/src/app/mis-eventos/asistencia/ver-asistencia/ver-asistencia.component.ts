import { Component, OnInit, Input } from '@angular/core';
import { AsistenciaSocioServices } from '../../../servicios/asistenciaSocio.service';
import { DetalleEvento } from '../../../servicios/evento.service';

@Component({
  selector: 'az-ver-asistencia',
  templateUrl: './ver-asistencia.component.html',
  styleUrls: ['./ver-asistencia.component.scss']
})
export class VerAsistenciaComponent implements OnInit {

  constructor(private asistenciaServ:AsistenciaSocioServices) { }

  @Input() detalleEvento: DetalleEvento;

  ngOnInit() {
  }

  getAsistenciasDetalleEvento(){

    this.asistenciaServ.query({'idEvento':this.detalleEvento.id,'id':this.detalleEvento.idEvento}).subscribe(result => {
      //this.eventosSocios = result;
      
      console.log(result)
     });
  }

}
