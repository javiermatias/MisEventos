import { Injectable } from '@angular/core';
import { RequestMethod } from '@angular/http';
import { BaseServices } from './base.service';
import { Variables } from './variables';
import { Matricula } from '../modelos/matricula';
import { HttpClient } from "@angular/common/http";

let variable = new Variables();


@Injectable()
export class MatriculaServices extends BaseServices<Matricula> {
    public url:string = `${new Variables().urlBase}matricula`;
    constructor(public http:HttpClient){
        super(http);
         }
}