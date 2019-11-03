import {Injectable} from '@angular/core';
import {BaseServices} from './base.service';
import {Variables} from './variables';
import {EspacioComun} from './espacio.service';
import {Socio} from './socio.service';
import {EncargadoEvento} from './encargado.service';
import {Tag} from './tag.service';
import { HttpClient } from "@angular/common/http";
import { Cuota } from '../modelos/Cuota';

export class Evento {
  constructor(
    public id?: number,
    public nombre?: string,
    public descripcion?: string,
    public idTipoEvento?:number,
    public tipoEvento?:TipoEvento,
    public idEspacio?:number,
    public espacio?:EspacioComun,

    public idEncargado?:number,
    public responsable?:EncargadoEvento, 

    public cupoMinimo?: number,
    public cupoMaximo?: number,
    public gratuito?:boolean, // true es gratiuto
    public monto?:number,
    public cantidadCuota?:number,
     public listaCuotas?:Array<Cuota>, 
    public fechaDesde?: Date,
    public fechaHasta?: Date,    
    public fechaDesdeInscripcion?: Date,
    public fechaHastaInscripcion?: Date,
    public listaHorarios?:Array<Horario>,
    //public listaTags?:Array<Tag>,        
    public estado?: string, 

    public listaDetalleEvento?:Array<DetalleEvento>,    

    public listaInscripciones?:Array<Inscripcion>,

    public fechaCreacion?: Date,
    //public fechaModificacion?: Date,
    public fechaBaja?: Date    
    
  ) {
    //this.listaTags = new Array<Tag>();
   // this.listaSocios = new Array<Socio>();
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
    public estado ?: string,
    public estadoEncuesta?:Boolean
  ) {
    //this.evento = new Evento(this.idEvento);
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
    public horaHasta?: string,
    //public espacio?: number
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
    public estado?: string,
    public fechaCobro?: Date,
    public fechaBaja?: Date,
    public estaPagado?:boolean,
    public idCuota?:number,    
    public cuota?: Cuota 
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
export class TipoEventoServices extends BaseServices<TipoEvento> {
  public url:string = `${new Variables().urlBase}tipoEvento`;
  constructor(public http:HttpClient){
    super(http);
     }
}

@Injectable()
export class EventoServices extends BaseServices<Evento> {
  public url:string = `${new Variables().urlBase}evento`;
  constructor(public http:HttpClient){
    super(http);
     }
}


@Injectable()
export class DetalleEventoServices extends BaseServices<DetalleEvento> {
  public url:string = `${new Variables().urlBase}detalleEvento`;
  constructor(public http:HttpClient){
    super(http);
     }
}



@Injectable()
export class PagoServices extends BaseServices<Pago> {
  public url:string = `${new Variables().urlBase}pago`;
  
}


@Injectable()
export class InscripcionServices extends BaseServices<Inscripcion> {
  public url:string = `${new Variables().urlBase}inscripcion`;
  
}