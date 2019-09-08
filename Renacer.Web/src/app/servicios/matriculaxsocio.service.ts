import { Injectable } from '@angular/core';
import { RequestMethod } from '@angular/http';
import { BaseServices } from './base.service';
import { Variables } from './variables';
import { MatriculaXsocio } from '../modelos/matricula-xsocio';
import { HttpClient } from "@angular/common/http";


let variable = new Variables();

@Injectable()
export class MatriculaxsocioService extends BaseServices<MatriculaXsocio>{
    public url:string = `${new Variables().urlBase}matriculasocio`;
    constructor(public http:HttpClient){
        super(http);
         }
}
