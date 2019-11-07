import { Injectable } from '@angular/core';
import { BaseServices } from './base.service';
import { Variables } from './variables';
import { HttpClient } from "@angular/common/http";
import { DeudaCuota } from '../modelos/deuda-cuota';


let variable = new Variables();

@Injectable()
export class DeudaCuotaServices extends BaseServices<DeudaCuota> {
    public url:string = `${new Variables().urlBase}DeudasCuotas`;
    constructor(public http:HttpClient){
        super(http);
         }
}