import {Injectable} from '@angular/core';
import {Resource, ResourceParams, ResourceAction} from 'ngx-resource';
import {ResourceMethod} from 'ngx-resource/src/Interfaces';
import {RequestMethod} from '@angular/http';
import {BaseServices} from './base.service';
import {Variables} from './variables';
import {EspacioComun} from './espacio.service';
import {Socio} from './socio.service';
import {EncargadoEvento} from './encargado.service';
import {Asistencia} from './asistencia.service';
import {Tag} from './tag.service';

export class Evento {
  constructor(
    public id?: number,
    public cupoMinimo?: number,
    public cupoMaximo?: number,
    public monto?: number,
    public nombre?: string,
    public estado?: string,
    public descripcion?: string,
    public listaTags?:Array<Tag>,
    public fechaHasta?: Date,
    public fechaDesde?: Date,
    public fechaDesdeInscripcion?: Date,
    public fechaHastaInscripcion?: Date,
    public fechaCreacion?: Date,
    public fechaModificacion?: Date,
    public fechaBaja?: Date,
    public espacio?:EspacioComun,
    public responsable?:EncargadoEvento,
    public tipoEvento?:TipoEvento,
    public listaSocios?:Array<Socio>,
    public listaInscripciones?:Array<Inscripcion>,
    public listaDetalleEvento?:Array<DetalleEvento>,
    public idEspacio?:number,
    public idEncargado?:number
  ) {
    this.listaTags = new Array<Tag>();
    this.listaSocios = new Array<Socio>();
    this.listaDetalleEvento = new Array<DetalleEvento>();
  }
}
export class TipoEvento {
  constructor(
    public id: number,
    public nombre?: string,
  ) {
  }
}

export class DetalleEvento {
  constructor(
    public id: number,
    public idEvento?: number,
    public nombre?: string,
    public descripcion?: string,
    public estado?: string,
    public responsable?:EncargadoEvento,
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
    this.espacio = new EspacioComun();
  }
}

export class Inscripcion {
  constructor(
    public id: number,
    public evento?: Evento,
    public estado?: string,
    public idSocio?: number,
    public idEvento?: number,
    public listaPagos?: Array<Pago>,
    public fechaCreacion?: Date,
    public fechaModificacion?: Date,
    public fechaBaja?: Date,
  ) {
    this.evento = new Evento(0);
    this.listaPagos = new Array<Pago>();
  }
}

export class Asociacion {
  constructor(
    public id: number,
    public socio?: Socio,
    public estado?: string,
    public listaPagos?: Array<Pago>,
    public fechaInicio?: Date,
    public fechaFin?: Date,
    public fechaCreacion?: Date,
    public fechaModificacion?: Date,
    public fechaBaja?: Date
  ) {
    this.socio = new Socio(0,"","");
    this.listaPagos = new Array<Pago>();
  }
}

export class Pago {
  constructor(
    public id: number,
    public monto?: number,
    public nroRecibo?: number,
    public inscripcion?: Inscripcion,
    public asociacion?: Asociacion,
    public estado?: string,
    public fechaCobro?: Date,
    public fechaCreacion?: Date,
    public fechaModificacion?: Date,
    public fechaBaja?: Date,
  ) {
    this.inscripcion = new Inscripcion(0);
    this.asociacion = new Asociacion(0);
  }
}

let variable = new Variables();

@Injectable()
@ResourceParams({
  url:variable.urlBase + "tipoEvento/"
})
export class TipoEventoServices extends BaseServices<TipoEvento> {
}

@Injectable()
@ResourceParams({
  url:variable.urlBase + "evento/"
})
export class EventoServices extends BaseServices<Evento> {
}

@Injectable()
@ResourceParams({
  url:variable.urlBase + "detalleEvento/"
})
export class DetalleEventoServices extends BaseServices<DetalleEvento> {
}


@Injectable()
@ResourceParams({
  url:variable.urlBase + "asociacion/"
})
export class AsociacionServices extends BaseServices<Asociacion> {
}


@Injectable()
@ResourceParams({
  url:variable.urlBase + "inscripcion/"
})
export class InscripcionServices extends BaseServices<Inscripcion> {
}