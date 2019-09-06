import {Injectable} from '@angular/core';
import {RequestMethod} from '@angular/http';
import {BaseServices} from './base.service';
import {Variables} from './variables';
import {TipoDocumento} from './tipo-documento.service';
import { HttpClient } from "@angular/common/http";

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
    export class SecretarioServices extends BaseServices<Secretario> {
      public url:string = `${new Variables().urlBase}secretario/`;

      constructor(public http:HttpClient){
        super(http);
         }
        // @ResourceAction({
        //   path:"/secretario/{!idSecretario}",
        //   method: RequestMethod.Post
        // })
        guardarNuevo(){
          this.save(null)
        } 
        // guardarNuevo:ResourceMethod<{ idSecretario: number },Secretario>;
        // @ResourceAction({
        //   path:"/secretario/{!idSecretario}",
        //   method: RequestMethod.Patch
        // })

        guardarEdicion(idSecretario:number){
          this.save(null)
        } 
        // guardarEdicion: ResourceMethod<{ idSecretario: number },Secretario>;
    }
