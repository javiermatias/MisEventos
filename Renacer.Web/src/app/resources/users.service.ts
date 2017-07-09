import {Injectable} from '@angular/core';
import {Resource, ResourceParams, ResourceAction} from 'ngx-resource';
import {ResourceMethod} from 'ngx-resource/src/Interfaces';
import {RequestMethod} from '@angular/http';
import {Variables} from './variables';
import {BaseServices} from './base.service';


export class Usuario {
  constructor(
    public id: number,
    public nombre: string,
    public rol: string,
    public email?:string,
    public fechaCreacion?: Date,
    public fechaBaja?: Date,
    public imagen?: string
  ) {  }
}


@Injectable()
@ResourceParams({
  url:new Variables().urlBase + "usuarios/"
})
export class UserServices extends BaseServices<Usuario> {

  @ResourceAction({
    method: RequestMethod.Post,
    url:new Variables().urlBase + "login/"
  })
  login: ResourceMethod<{usuario: string,clave:string},Object>;

  @ResourceAction({
    method: RequestMethod.Get,
    url:new Variables().urlBase + "usuarios/actual"
  })

  login2 = function(username:string,password:string):string
  {
    if(username == "augusto" && password == "123123"){
      this.usuario = {
        'nombre':'Augusto Galan',
        'rol':'Administrador',
        'imagen':'assets/img/users/augusto.png'};
        return "success";
      }else{
        return "error";
      }
    };

    getCurrent=function(){
      if(this.usuario == null){
       this.usuario = JSON.parse(localStorage.usuario);
      }
        return this.usuario;
    }
    setCurrent = function(usuario:Usuario){
       this.usuario = usuario;
       localStorage.usuario = JSON.stringify(usuario) ;
    }
  }
