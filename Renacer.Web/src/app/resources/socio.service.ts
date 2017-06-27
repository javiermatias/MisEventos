import {Injectable} from '@angular/core';
import {Resource, ResourceParams, ResourceAction} from 'ngx-resource';
import {ResourceMethod} from 'ngx-resource/src/Interfaces';
import {RequestMethod} from '@angular/http';
import {BaseServices} from './base.service';

export class Socio {
  constructor(
    public id: number,
    public nombre: string,
    public apellido: string,
    public email?:string,
    public telefono?:string,
    public fechaNacimiento?: Date,
    public fechaCreacion?: Date,
    public fechaBaja?: Date,
    public nroSocio?: string,
    public dni?: string,
    public imagen?: string
  ) {  }
}


@Injectable()
@ResourceParams({
  url: 'http://localhost:6913/api/socio'
})
export class SocioServices extends BaseServices {

}
