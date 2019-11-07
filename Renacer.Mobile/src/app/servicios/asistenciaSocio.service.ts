import { Injectable } from '@angular/core';
import { BaseServices } from './base.service';
import { Variables } from './variables';
import { HttpClient } from "@angular/common/http";
import { AsistenciaSocio } from '../modelos/asistencia-socio';


let variable = new Variables();

@Injectable()
export class AsistenciaSocioServices extends BaseServices<AsistenciaSocio> {
    public url:string = `${new Variables().urlBase}AsistenciaSocio`;
    constructor(public http:HttpClient){
        super(http);
    }
}