import {Injectable} from '@angular/core';
import {Resource, ResourceParams, ResourceAction} from 'ngx-resource';
import {ResourceMethod} from 'ngx-resource/src/Interfaces';
import {RequestMethod} from '@angular/http';
import {BaseServices} from './base.service';
import {Variables} from './variables';
import {Tag} from './tag.service';
import {Socio} from './socio.service';
import {Evento} from './evento.service';


export class FiltroReporte {
  constructor(
    public barrio?: string,
    public sexo?: string,
    public Tags?: Array<Tag>,
    public edadDesde?:String,
    public edadHasta?:String,
    public fechaDesde?:String,
    public fechaHasta?:String
  ) {
    this.barrio = "";
    this.sexo = "";
    this.Tags = [];
    this.edadDesde = "";
    this.edadHasta = "";
    this.fechaDesde = "";
    this.fechaHasta = "";
  }
}

let variable = new Variables();

@Injectable()
@ResourceParams({
  url:variable.urlBase + "reporte/"
})
export class ReporteServices extends BaseServices<Object> {

  @ResourceAction({
    method: RequestMethod.Post,
    path: '/tags',
    isArray: true
  })
  tags: ResourceMethod<FiltroReporte,Tag[]>;
  @ResourceAction({
    method: RequestMethod.Post,
    path: '/socios',
    isArray: true
  })
  socios: ResourceMethod<FiltroReporte,Socio[]>;
  @ResourceAction({
    method: RequestMethod.Post,
    path: '/eventos',
    isArray: true
  })
  eventos: ResourceMethod<FiltroReporte,Evento[]>;

  @ResourceAction({
    method: RequestMethod.Get,
    path: '/count'
  })
  getEntidadCount: ResourceMethod<object,any>;

  @ResourceAction({
    method: RequestMethod.Post,
    path: '/crecimiento-socios',
    isArray: true
  })
  getCrecimientoSocios: ResourceMethod<FiltroReporte,any[]>;


  @ResourceAction({
    method: RequestMethod.Post,
    path: '/socios-por-edad',
    isArray: true
  })
  getSociosPorEdad: ResourceMethod<FiltroReporte,any[]>;

}
