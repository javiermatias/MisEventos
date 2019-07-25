import {Injectable} from '@angular/core';
import {Resource, ResourceParams, ResourceAction} from 'ngx-resource';
import {ResourceMethod} from 'ngx-resource/src/Interfaces';
import {RequestMethod} from '@angular/http';
import {Variables} from './variables';
import {BaseServices} from './base.service';


export class Usuario {
  constructor(
    public id: number,
    public nombre?: string,
    public rol?: string,
    public email?:string,
    public fechaCreacion?: Date,
    public fechaBaja?: Date,
    public imagen?: string,
    public idEncargado?:number,
    public idSocio?:number
  ) {  }
}


@Injectable()
@ResourceParams({
  url:new Variables().urlBase + "usuario/"
})
export class UserServices extends BaseServices<Usuario> {

  @ResourceAction({
    method: RequestMethod.Post,
    url:new Variables().urlBase + "login/",
    noAuth:true
  })
  login: ResourceMethod<{usuario: string,clave:string},Object>;

  @ResourceAction({
    method: RequestMethod.Get
  })
  actual:ResourceMethod<{},Object>;

  getCurrent=function(){
    if(this.usuario == null){
      this.usuario = JSON.parse(localStorage.usuario);
    }
    return this.usuario;
  }
  setCurrent = function(usuario:Usuario){
    this.usuario = usuario;
    localStorage.usuario = JSON.stringify(usuario) ;
    if (usuario) { // cuando cierro sesion mando un usuario nulo
      sessionStorage["token"] = usuario["token"];
    }
  }
}
