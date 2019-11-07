import {Injectable} from '@angular/core';
import {RequestMethod} from '@angular/http';
import {BaseServices} from './base.service';
import {Tag} from './tag.service';
import {Variables} from './variables';
import { TipoEspacio } from '../mis-eventos/espacios/tipoEspacio/tipoEspacio.service';

import { HttpClient } from "@angular/common/http";

export class EspacioComun {
  constructor(
    public id?: number,
    public nombre?: string,
    public descripcion?: string,
    public capacidad?: number,   
    public idTipoEspacio?: number,
    public tipoEspacio?:TipoEspacio,    
    public estado?: number,
    public listaTags?: Array<Tag>,
    public fechaCreacion?: Date,
    public fechaBaja?: Date,
    public fechaModificacion?: Date
    
  ) {
this.listaTags = new Array<Tag>();
  }
}

let variable = new Variables();

@Injectable()
export class EspacioServices extends BaseServices<EspacioComun> {
  public url:string = `${new Variables().urlBase}espacio`;
  
  constructor(public http:HttpClient){
    super(http);
     }
}
