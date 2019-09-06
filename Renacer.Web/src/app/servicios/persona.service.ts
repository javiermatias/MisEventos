import { Injectable } from '@angular/core';
import { RequestMethod } from '@angular/http';
import { Variables } from './variables';
import { BaseServices } from './base.service';
import { TipoDocumento } from './tipo-documento.service';
import { Tag } from './tag.service';
import { HttpClient } from "@angular/common/http";



export class Persona {
  constructor(
    public id: number,
    public nombre?: string,
    public apellido?: string,
    public telefono?: string,
    public celular?: string,
    public email?: string,
    public sexo?: string,
    public estadoCivil?: string,
    public idTipoDoc?: string,
    public tipoDoc?: TipoDocumento,
    public nroDocumento?: string,
    public idDomicilio?: number,
    public idContacto?: number,
    public fechaCreacion?: Date,
    public fechaNacimiento?: Date,
    public fechaBaja?: Date,
    public domicilio?: Domicilio,
    public contacto?: Contacto,
    public fechaModificacion?: Date,
    public rol?: string,
    public listaTags?: Array<Tag>,
  ) {
    this.tipoDoc = new TipoDocumento();
    this.listaTags = new Array<Tag>();
  }
}
export class Domicilio {
  constructor(
    public id?: number,
    public barrio?: string,
    public calle?: string,
    public piso?: string,
    public nro?: string,
    public codPostal?: number,
    public depto?: string) {
    this.id = 0;
    this.barrio = "";
    this.calle = "";
    this.piso = "";
    this.nro = "";
    this.codPostal = 0;
    this.depto = "";
  }
}
export class Contacto {
  constructor(
    public id?: number,
    public nombre?: string,
    public apellido?: string,
    public telefono?: string,
    public email?: string,
    public relacion?: string,
    public celular?: string) {
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
export class PersonaServices extends BaseServices<Persona> {
  public url:string = `${new Variables().urlBase}persona/`;
  constructor(public http:HttpClient){
    super(http);
     }
}