import {Injectable} from '@angular/core';
import {Resource, ResourceParams, ResourceAction} from 'ngx-resource';
import {ResourceMethod} from 'ngx-resource/src/Interfaces';
import {RequestMethod} from '@angular/http';
import {Variables} from './variables';


export class Usuario {
  constructor(
    public id: number,
    public nombre: string,
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
export class UserServices extends Resource {

  @ResourceAction({
    method: RequestMethod.Post,
    url:new Variables().urlBase + "login/"
  })
  login: ResourceMethod<{usuario: string,clave:string}, string>;

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
      return this.usuario;
    }
    usuario = {
      'nombre':'',
      'rol':'',
      'imagen':'',
    };
  }
