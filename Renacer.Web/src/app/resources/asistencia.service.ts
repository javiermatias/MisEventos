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
  url:variable.urlBase + "asistencia/"
})
export class AsistenciaServices extends BaseServices<Asistencia> {
}
