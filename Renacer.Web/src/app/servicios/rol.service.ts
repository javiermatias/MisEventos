import {Injectable} from '@angular/core';
import {BaseServices} from './base.service';
import {Variables} from './variables';
import { HttpClient } from "@angular/common/http";

export class Rol {
  constructor(
    public id?: number,
    public nombre?: string,
    public descripcion?: string
  ) { }
}

let variable = new Variables();

@Injectable()
export class RolServices extends BaseServices<Rol> {

  public url:string = `${new Variables().urlBase}rol/`;
  constructor(public http:HttpClient){
    super(http);
     }
  setCurrent = function(rol:Rol){
    localStorage.setItem('rol', JSON.stringify(rol));
    // sessionStorage["token"] = rol["token"]; // TODO: cuando haga esto, generar token cuando no sea nulo el rol
  }

  getCurrent = function(): Rol{
    return JSON.parse(localStorage.getItem('rol'));
  }
}
