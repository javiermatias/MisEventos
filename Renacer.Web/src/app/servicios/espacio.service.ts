import {Injectable} from '@angular/core';
import {Resource, ResourceParams, ResourceAction} from 'ngx-resource';
import {ResourceMethod} from 'ngx-resource/src/Interfaces';
import {RequestMethod} from '@angular/http';
import {BaseServices} from './base.service';
import {Tag} from './tag.service';
import {Variables} from './variables';
import { TipoEspacio } from '../mis-eventos/espacios/tipoEspacio/tipoEspacio.service';

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
@ResourceParams({
  url:variable.urlBase + "espacio/"
})
export class EspacioServices extends BaseServices<EspacioComun> {
}
