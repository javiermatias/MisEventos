import {Injectable} from '@angular/core';
import {Resource, ResourceParams, ResourceAction} from 'ngx-resource';
import {ResourceMethod} from 'ngx-resource/src/Interfaces';
import {RequestMethod} from '@angular/http';
import {BaseServices} from './base.service';
import {Variables} from './variables';
import {TipoDocumento} from './tipo-documento.service';
import {Domicilio} from './socio.service';
import {Tag} from './tag.service';

export class EncargadoEvento {
  constructor(
    public id: number,
    public nombre?: string,
    public apellido?: string,
    public email?:string,
    public telefono?:string,
    public listaTags?:Array<Tag>,
    public fechaNacimiento?: Date,
    public fechaCreacion?: Date,
    public fechaBaja?: Date,
    public nroDocumento?: string,
    public tipoDoc?:TipoDocumento,
    public domicilio?:Domicilio
  ) {
    this.tipoDoc = new TipoDocumento();
    this.listaTags = new Array<Tag>();
  }

}

let variable = new Variables();

@Injectable()
@ResourceParams({
  url:variable.urlBase + "encargado/"
})
export class EncargadoEventoServices extends BaseServices<EncargadoEvento> {
}
