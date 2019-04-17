import {Injectable} from '@angular/core';
import {Resource, ResourceParams, ResourceAction} from 'ngx-resource';
import {ResourceMethod} from 'ngx-resource/src/Interfaces';
import {RequestMethod} from '@angular/http';
import {Variables} from './variables';
import {BaseServices} from './base.service';
import { TipoDocumento } from './tipo-documento.service';


class Persona {
  constructor(
    public id: number,
    public nombre?: string,
    public apellido?: string,
    public rol?: string,
    public email?:string,
    public fechaCreacion?: Date,
    public fechaBaja?: Date,
    public imagen?: string
//    public telefono: null,
//         public celular?: number, null,
//         public email?: number, null,
//         public sexo?: number, null,
//         public estadoCivil?: number, null,
//         public idTipoDoc?: number, 1,
//         public tipoDoc?: TipoDocumento, null,
//         public nroDocumento?: number, "32",
//         public idDomicilio?: number, null,
//         public domicilio?: number, null,
//         public idContacto?: number, 1,
//         public contacto?: number, null,
//         public fechaCreacion?: number, "0001-01-01T00:00:00",
//         public fechaNacimiento?: number, null,
//         public fechaBaja?: number, null,
//         public fechaModificacion?: number, null,
//         public listaAsociaciones?: number, null,
//         public listaInscripciones?: number, null,
//         public listaAsistencias?: number, null,
//         public listaTags?: number, [],
//         public rol?: number, null
  ) {  }
}


@Injectable()
@ResourceParams({
  url:new Variables().urlBase + 'persona/'
})
export class PersonaServices extends BaseServices<Persona> {
}