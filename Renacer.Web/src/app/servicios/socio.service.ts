import {Injectable} from '@angular/core';
import {RequestMethod} from '@angular/http';
import {BaseServices} from './base.service';
import {Variables} from './variables';
import {TipoDocumento} from './tipo-documento.service';
import {Tag} from './tag.service';
import { Matricula } from '../modelos/matricula';
import { Observable } from "rxjs/Observable";

import { HttpClient } from "@angular/common/http";
export class Socio {
  constructor(
    public id: number,
    public nombre: string,
    public apellido: string,
    public telefono?:string,
    public celular?:string,
    public email?:string,
    public sexo?:string,
    public estadoCivil?: string,
    public idTipoDoc?: number,       
    public tipoDoc?:TipoDocumento,
    public nroDocumento?: string,    
    public idDomicilio?: number, 
    public domicilio?:Domicilio,    
    public idContacto?: number, 
    public contacto?:Contacto,
    public listaTags?:Array<Tag>,
    public fechaNacimiento?: Date,
    public fechaCreacion?: Date,
    public fechaBaja?: Date,    
    public estado?:string
  ) {
  this.tipoDoc = new TipoDocumento();
  this.domicilio=new Domicilio();
  this.contacto=new Contacto();
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
    public depto?:string
    )
    {
      //this.id = 0;
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
      public celular?:string,
      public email?:string,
      public relacion?:string,
      
      )
      {
        //this.id = 0;
        this.nombre = "";
        this.apellido = "";
        this.telefono = "";
        this.email = "";
        this.relacion = "";
        this.celular = "";
      }
    }

    @Injectable()
    export class SocioServices extends BaseServices<Socio> {
      public url:string = `${new Variables().urlBase}socio/`;
      constructor(public http:HttpClient){
        super(http);
         }
    }

    @Injectable()
    export class SocioMatriculaServices extends BaseServices<Socio> {
      public url:string = `${new Variables().urlBase}`;
      constructor(public http:HttpClient){
        super(http);
         }
      cambiarEstadoMatricula(idSocio: number):Observable<any>{
              return this.http.post(`${this.url}socio/${idSocio}/matricula`,{idSocio:idSocio})
      }

      getMatriculaActual():Observable<Matricula>{
        return this.http.get<Matricula>(`${this.url}/matricula/activa`)
      }
    }
