import {Injectable} from '@angular/core';
import {Resource, ResourceParams, ResourceAction} from 'ngx-resource';
import {ResourceMethod} from 'ngx-resource/src/Interfaces';
import {RequestMethod} from '@angular/http';
import {BaseServices} from './base.service';
import {Variables} from './variables';

export class Socio {
  constructor(
    public id: number,
    public nombre: string,
    public apellido: string,
    public email?:string,
    public telefono?:string,
    public fechaNacimiento?: Date,
    public fechaCreacion?: Date,
    public fechaBaja?: Date,
    public nroSocio?: string,
    public dni?: string,
    public imagen?: string,
    public tipoDoc?:TipoDocumento,
    public domicilio?:Domicilio,
    public contacto?:Contacto
  ) {  }
}
export class TipoDocumento{
  constructor(
  public id?:number,
  public nombre?:string){}
}
export class Domicilio{
  constructor(
    public id?:number,
    public barrio?:string,
    public calle? :string,
    public piso?:string,
    public nroCalle?:string,
    public depto?:string){}
  }
  export class Contacto{
    constructor(
      public id?:number,
      public nombre?:string,
      public apellido?:string,
      public telefono?:string,
      public email?:string,
      public celular?:string){}
    }

    @Injectable()
    @ResourceParams({
      url:new Variables().urlBase + "socio/"
    })

    export class SocioServices extends BaseServices<Socio> {

     @ResourceAction({
       isArray: true,
       url:new Variables().urlBase + "comun/",
       path: '/tiposDocumentos'
     })
     tiposDocumentos: ResourceMethod<{}, TipoDocumento[]>;

    }
