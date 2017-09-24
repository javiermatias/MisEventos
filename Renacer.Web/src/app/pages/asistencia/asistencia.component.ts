import { Component, OnInit ,OnDestroy, Input} from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import {FormGroup} from '@angular/forms';
import {DatePipe} from '@angular/common' ;
import { ToastrService, ToastrConfig } from 'ngx-toastr';
import { EventoServices ,Evento,TipoEventoServices,TipoEvento,DetalleEvento} from '../../resources/evento.service';
import { EncargadoEvento,EncargadoEventoServices} from '../../resources/encargado.service';
import { EspacioComun,EspacioServices} from '../../resources/espacio.service';


@Component({
  selector: 'az-asistencia',
  templateUrl: './asistencia.component.html',
  styleUrls: ['./asistencia.component.css']
})
export class AsistenciaComponent implements OnInit {

  public eventoSeleccionado:Evento
  public _item:EspacioComun;

  constructor(private eventoServ:EventoServices) { }

  ngOnInit() {
    this.eventoSeleccionado = new Evento(0);
    this._item = new EspacioComun(0);
  }

}
