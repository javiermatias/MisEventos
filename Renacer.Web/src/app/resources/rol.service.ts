import {Injectable} from '@angular/core';
import { ResourceParams } from 'ngx-resource';
import {BaseServices} from './base.service';
import {Variables} from './variables';

export class Rol {
  constructor(
    public id?: number,
    public nombre?: string,
    public descripcion?: string
  ) { }
}

let variable = new Variables();

@Injectable()
@ResourceParams({
  url:variable.urlBase + "rol/"
})
export class RolServices extends BaseServices<Rol> {

  setCurrent = function(rol:Rol){
    localStorage.rol = JSON.stringify(rol) ;
    sessionStorage["token"] = rol["token"];
  }
}
