import {Injectable} from '@angular/core';
import {Resource, ResourceParams, ResourceAction} from 'ngx-resource';
import {ResourceMethod} from 'ngx-resource/src/Interfaces';
import {RequestMethod} from '@angular/http';
import {BaseServices} from './base.service';
import {Variables} from './variables';
import {EspacioComun} from './espacio.service';
import {Socio} from './socio.service';
import {EncargadoEvento} from './encargado.service';
import {Tag} from './tag.service';

export class Evento {
  constructor(
    public id: number,
    public cupoMinimo: number,
    public cupoMaximo: number,
    public monto: number,
    public nombre: string,
    public estado: string,
    public descripcion: string,
    public listaTags?:Array<Tag>,
    public fechaHasta?: Date,
    public fechaDesde?: Date,
    public fechaDesdeInscripcion?: Date,
    public fechaHastaInscripcion?: Date,
    public fechaCreacion?: Date,
    public fechaModificacion?: Date,
    public fechaBaja?: Date,
    public espacio?:EspacioComun,
    public encargado?:EncargadoEvento,
    public listaSocios?:Array<Socio>,
    public listaDetalleEvento?:Array<DetalleEvento>
  ) {
    this.listaTags = new Array<Tag>();
    this.listaSocios = new Array<Socio>();
    this.listaDetalleEvento = new Array<DetalleEvento>();
  }
}
export class DetalleEvento {
  constructor(
    public id: number,
    public nombre: string,
    public descripcion: string,
    public estado: string,
    public encargado?:EncargadoEvento,
    public espacio?:EspacioComun,
    public asistencia?: Asistencia,
    public fechaHasta?: Date,
    public fechaDesde?: Date,
    public fechaCancelacion?: Date,
    public fechaCreacion?: Date,
    public fechaModificacion?: Date,
    public fechaBaja?: Date,
  ) {
    this.asistencia = new Asistencia(0,"Pendiente");
  }
}

export class Asistencia {
  constructor(
    public id: number,
    public estado: string,
    public fechaAsistencia?: Date,
    public listaSocios?:Array<Socio>
  ) {
    this.listaSocios = new Array<Socio>();
  }
}

let variable = new Variables();

@Injectable()
@ResourceParams({
  url:variable.urlBase + "evento/"
})
export class EventoServices extends BaseServices<Evento> {
}
