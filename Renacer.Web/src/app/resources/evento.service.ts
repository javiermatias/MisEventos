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
    public nombre?: string,
    public descripcion?: string,
    public idTipoEvento?:number,
    public tipoEvento?:TipoEvento,
    public idEspacio?:number,
    public espacio?:EspacioComun,
    public cupoMinimo?: number,
    public cupoMaximo?: number,
    public gratuito?:boolean, // true es gratiuto
    public monto?:number,
    public cantidadCuota?:number,
    /* public listaCuotas?:Array<Cuota>, */
    public fechaDesde?: Date,
    public fechaHasta?: Date,    
    public fechaDesdeInscripcion?: Date,
    public fechaHastaInscripcion?: Date,
    public listaHorarios?:Array<Horario>,
    //public listaTags?:Array<Tag>,        
    public estado?: string, 
    public fechaCreacion?: Date,
    //public fechaModificacion?: Date,
    public fechaBaja?: Date,    
    public responsable?:EncargadoEvento,    
    public listaSocios?:Array<Socio>,
    public listaInscripciones?:Array<Inscripcion>,
    public listaDetalleEvento?:Array<DetalleEvento>,    
    public idEncargado?:number
  ) {
    //this.listaTags = new Array<Tag>();
    this.listaSocios = new Array<Socio>();
    this.listaDetalleEvento = new Array<DetalleEvento>();
    //this.tipoEvento= new TipoEvento(0);
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
    public nombre?: string,
    public descripcion?: string,    
    public idEncargado?: number,
    public responsable?:EncargadoEvento,
    public idEvento?: number,
    public evento?: Evento,
    public idEspacio?:number,
    public espacio?:EspacioComun,    
    public fechaDesde?: Date, 
    public fechaHasta?: Date,    
    public fechaBaja?: Date,
    public estado?: string,
    public dia?:string,
    public asistencia?:boolean
   
  ) {
    //this.asistencia = new Asistencia(0,"Pendiente");
    this.espacio = new EspacioComun();
  }
}

export class Inscripcion {
  constructor(
    public id: number,
    public idEvento?: number,
    public evento?: Evento,
    //public estado?: string,
    public idSocio?: number,
    public socio?:Socio,
    public listaPagos?: Array<Pago>,
    public fechaCreacion?: Date,  
    public fechaBaja?: Date,
  ) {
    this.evento = new Evento(this.idEvento);
    //this.listaPagos = new Array<Pago>();
  }
}
/* public int id { get; set; }

public int idEvento { get; set; }
[ForeignKey("idEvento")]
public Evento Evento { get; set; }

public List<Pago> listaPagos { get; set; }

public int idSocio { get; set; }
[ForeignKey("idSocio")]
public Socio Socio { get; set; }

public DateTime fechaCreacion { get; set; } */



export class Horario
{
  constructor(
    public id: number,
    public  dia?: string,
    public dayOfWeek?: string,
    public horaDesde?: string,
    public horaHasta?: string
  ){}
   

}


export class Pago {
  constructor(
    public id: number,
    public nombre:string,
    public monto?: number,
    public nroRecibo?: number,
    public idInscripcion?: number,
    public inscripcion?: Inscripcion,
    //public asociacion?: Asociacion,
    public estado?: string,
    public fechaCobro?: Date,
    public fechaBaja?: Date,
    public estaPagado?:boolean,
  ) {
    this.inscripcion = new Inscripcion(0);
   
  }
}

/* export class Cuota
{
    public id: number;
    public nombre?: string;
    public decimal: number;
    
} */

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
  url:variable.urlBase + "pago/"
})
export class PagoServices extends BaseServices<Pago> {
}


@Injectable()
@ResourceParams({
  url:variable.urlBase + "inscripcion/"
})
export class InscripcionServices extends BaseServices<Inscripcion> {
}