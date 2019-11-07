import { Injectable } from '@angular/core';
import { BaseServices } from './base.service';
import { Variables } from './variables';
import { HttpClient } from "@angular/common/http";
import { Contrasenia } from '../modelos/contrasenia';


@Injectable()
export class CambioContraseniaService extends BaseServices<Contrasenia> {
    public url:string = `${new Variables().urlBase}cambioContrasenia`;
    constructor(public http:HttpClient){
        super(http);
         }
}