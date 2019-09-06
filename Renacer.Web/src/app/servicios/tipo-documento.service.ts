import {Injectable} from '@angular/core';
import {BaseServices,BaseEntity} from './base.service';
import {Variables} from './variables';
import { HttpClient } from "@angular/common/http";

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
export class TipoDocumentoServices extends BaseServices<TipoDocumento> {

  public url:string = `${new Variables().urlBase}tipoDocumento/`;
  constructor(public http:HttpClient){
    super(http);
     }
}
