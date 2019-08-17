import {Injectable} from '@angular/core';
import {Resource, ResourceParams, ResourceAction} from 'ngx-resource';
import {ResourceMethod} from 'ngx-resource/src/Interfaces';
import {RequestMethod} from '@angular/http';
import {BaseServices} from './base.service';
import {Variables} from './variables';
import {TipoDocumento} from './tipo-documento.service';

export class Secretario {
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
    public fechaNacimiento?: Date,
    public fechaCreacion?: Date,
    public fechaBaja?: Date,    
    public estado?:string
  ) {
  this.tipoDoc = new TipoDocumento();
  }
}

    @Injectable()
    @ResourceParams({
      url:new Variables().urlBase + "secretario/"
    })
    export class SecretarioServices extends BaseServices<Secretario> {
        @ResourceAction({
          path:"/secretario/{!idSecretario}",
          method: RequestMethod.Post
        })
        guardarNuevo: ResourceMethod<{ idSecretario: number },Secretario>;
        @ResourceAction({
          path:"/secretario/{!idSecretario}",
          method: RequestMethod.Patch
        })
        guardarEdicion: ResourceMethod<{ idSecretario: number },Secretario>;
    }
