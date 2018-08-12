import {Injectable} from '@angular/core';
import {Resource, ResourceParams, ResourceAction} from 'ngx-resource';
import {ResourceMethod} from 'ngx-resource/src/Interfaces';
import {RequestMethod} from '@angular/http';
import {BaseServices,BaseEntity} from './base.service';
import {Variables} from './variables';

export class TipoDocumento extends BaseEntity{
  constructor(
  public id?:number,
  public nombre?:string){
  super();
    this.id = 0;
    this.nombre = "";
  }
}

@Injectable()
@ResourceParams({
  url:new Variables().urlBase + "tipoDocumento/"
})
export class TipoDocumentoServices extends BaseServices<TipoDocumento> {

 // @ResourceAction({
 //   isArray: true,
 //   url:new Variables().urlBase + "comun/",
 //   path: '/tiposDocumentos'
 // })
 // tiposDocumentos: ResourceMethod<{}, TipoDocumento[]>;
}
