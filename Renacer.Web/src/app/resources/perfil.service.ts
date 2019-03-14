import {Injectable} from '@angular/core';
import { ResourceParams } from 'ngx-resource';
import {BaseServices} from './base.service';
import {Variables} from './variables';

export class Perfil {
  constructor(
    public id?: number,
    public nombre?: string,
    public descripcion?: string
  ) { }
}

let variable = new Variables();

@Injectable()
@ResourceParams({
  url:variable.urlBase + "perfil/"
})
export class PerfilServices extends BaseServices<Perfil> {
}
