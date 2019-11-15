import { Injectable } from '@angular/core';
import { Variables } from './variables';
import { ProximoEvento } from '../modelos/proximo-evento';
import { BaseServices } from './base.service';
import { HttpClient } from '@angular/common/http';
let variable = new Variables();

@Injectable({
  providedIn: 'root'
})
export class ProximoEventoService extends BaseServices<ProximoEvento> {
  public url:string = `${variable.urlBase}proximoevento`;
  constructor(public http:HttpClient) {
    super(http);
   }
}
