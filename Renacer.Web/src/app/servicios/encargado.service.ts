import {Injectable} from '@angular/core';
import {RequestMethod} from '@angular/http';
import {BaseServices} from './base.service';
import {Variables} from './variables';
import {TipoDocumento} from './tipo-documento.service';
import {Domicilio} from './socio.service';
import {Tag} from './tag.service';

import { HttpClient } from "@angular/common/http";

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
export class EncargadoEventoServices extends BaseServices<EncargadoEvento> {
  public url:string = `${new Variables().urlBase}encargado/`;
  
  constructor(public http:HttpClient){
    super(http);
     }

}

