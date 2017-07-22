import {Injectable} from '@angular/core';
import {Resource, ResourceParams, ResourceAction} from 'ngx-resource';
import {ResourceMethod} from 'ngx-resource/src/Interfaces';
import {RequestMethod} from '@angular/http';
import {BaseServices} from './base.service';
import {Variables} from './variables';

export class EncargadoEvento {
  constructor(
    public id: number,
    public nombre: string,
    public apellido: string,
    public fechaBaja?: Date,
    public fechaModificacion?: Date,
    public fechaCreacion?: Date,
  ) {  }
}

let variable = new Variables();

@Injectable()
@ResourceParams({
  url:variable.urlBase + "encargado/"
})
export class EncargadoEventoServices extends BaseServices<EncargadoEvento> {
}
