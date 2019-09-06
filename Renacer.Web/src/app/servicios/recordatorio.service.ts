import { Injectable } from '@angular/core';
import { BaseServices } from './base.service';
import { Variables } from './variables';;
import { Recordatorio } from '../modelos/recordatorio';
import { HttpClient } from "@angular/common/http";

let variable = new Variables();

@Injectable()
export class RecordatorioServices extends BaseServices<Recordatorio> {
    public url:string = `${new Variables().urlBase}recordatorio/`;
    constructor(public http:HttpClient){
        super(http);
         }
}

@Injectable()
export class RecordatorioHoyServices extends BaseServices<Recordatorio> {
    public url:string = `${new Variables().urlBase}recordatorio/hoy`;
    constructor(public http:HttpClient){
        super(http);
         }
}

@Injectable()
export class ActualizarEventoServices extends BaseServices<any> {
    public url:string = `${new Variables().urlBase}ActualizarEvento`;
    constructor(public http:HttpClient){
        super(http);
         }
}