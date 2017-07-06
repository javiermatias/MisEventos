import {Injectable} from '@angular/core';
import {Resource, ResourceParams, ResourceAction} from 'ngx-resource';
import {ResourceMethod} from 'ngx-resource/src/Interfaces';
import {RequestMethod} from '@angular/http';
import {BaseServices} from './base.service';
import {Variables} from './variables';

export class EspacioComun {
  constructor(
    public id: number,
    public nombre: string,
    public descripcion: string,
    public idDireccion: number,
    public idTipoEspacio: number,
    public capacidad: number,
    public estado?: number,
    public fechaBaja?: Date,
    public fechaModificacion?: Date,
    public fechaCreacion?: Date,
  ) {  }
}

let variable = new Variables();

@Injectable()
@ResourceParams({
  url:variable.urlBase + "espacio/"
})
export class EspacioServices extends BaseServices<EspacioComun> {
}
