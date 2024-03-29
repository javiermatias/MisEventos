import {Injectable} from '@angular/core';
import {RequestMethod} from '@angular/http';
import {BaseServices} from './base.service';
import {Variables} from './variables';
import {EspacioComun} from './espacio.service';
import {Socio} from './socio.service';
import {EncargadoEvento} from './encargado.service';
import {Tag} from './tag.service';
import { DetalleEvento } from './evento.service';
import { HttpClient } from '@angular/common/http';
import { AsistenciaEvento } from '../modelos/asistencia-evento';
import { AsistenciaDetalleEvento } from '../modelos/asistencia-detalle-evento';

export class Asistencia {
  constructor(
    public id?: number,
    public idSocio?: number,
    public socio?: Socio,
    public idEncargado?: number,
    public responsable?:EncargadoEvento,
    public idDetalleEvento?: number,
    public detalleEvento?:DetalleEvento,
    public estado?: boolean,
    public fechaAsistencia?: Date   
  ) {
    
  }
}
/* [Key]
public int id { get; set; }

public int idSocio { get; set; }
[ForeignKey("idSocio")]
public Socio socio { get; set; }

public int idEncargado { get; set; }
[ForeignKey("idEncargado")]
public Encargado responsable { get; set; }

public int idDetalleEvento { get; set; }
public DetalleEvento detalleEvento { get; set; }

public string estado { get; set; } //Lista
public DateTime fechaAsistencia { get; set; } */


let variable = new Variables();

@Injectable()
export class AsistenciaServices extends BaseServices<Asistencia> {
  public url:string = variable.urlBase + "asistencia";
  
  constructor(public http:HttpClient){
    super(http);
     }
}


@Injectable()
export class AsistenciaEventoServices extends BaseServices<AsistenciaEvento> {
  public url:string = variable.urlBase + "asistenciaevento";
  
  constructor(public http:HttpClient){
    super(http);
     }
}

@Injectable()
export class AsistenciaDetalleEventoServices extends BaseServices<AsistenciaDetalleEvento> {
  public url:string = variable.urlBase + "AsistenciaDetalle";
  
  constructor(public http:HttpClient){
    super(http);
     }
}
//AsistenciaDetalleEvento