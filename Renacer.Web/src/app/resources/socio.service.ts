import {Injectable} from '@angular/core';
import {Resource, ResourceParams, ResourceAction} from 'ngx-resource';
import {ResourceMethod} from 'ngx-resource/src/Interfaces';
import {RequestMethod} from '@angular/http';
import {BaseServices} from './base.service';
import {Variables} from './variables';
import {TipoDocumento} from './tipo-documento.service';
import {Tag} from './tag.service';

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
    public nroDocumento?: string,
    public estadoCivil?: string,
    public tipoDoc?:TipoDocumento,
    public sexo?:string,
    public domicilio?:Domicilio,
    public contacto?:Contacto,
    public listaTags?:Array<Tag>,
    public estado?:string
  ) {
  this.tipoDoc = new TipoDocumento();
  this.listaTags = new Array<Tag>();
  }
}

export class Domicilio{
  constructor(
    public id?:number,
    public barrio?:string,
    public calle? :string,
    public piso?:string,
    public nro?:string,
    public codPostal?:number,
    public depto?:string){
      this.id = 0;
      this.barrio = "";
      this.calle = "";
      this.piso = "";
      this.nro = "";
      this.codPostal = 0;
      this.depto = "";
    }
  }
  export class Contacto{
    constructor(
      public id?:number,
      public nombre?:string,
      public apellido?:string,
      public telefono?:string,
      public email?:string,
      public relacion?:string,
      public celular?:string){
        this.id = 0;
        this.nombre = "";
        this.apellido = "";
        this.telefono = "";
        this.email = "";
        this.relacion = "";
        this.celular = "";
      }
    }

    @Injectable()
    @ResourceParams({
      url:new Variables().urlBase + "socio/"
    })
    export class SocioServices extends BaseServices<Socio> {
    }

    @Injectable()
    @ResourceParams({
      url:new Variables().urlBase + "socio/pagoMatricula"
    })
    export class SocioMatriculaServices extends BaseServices<Socio> {
    }
