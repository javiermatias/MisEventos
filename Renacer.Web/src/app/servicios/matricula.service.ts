import { Injectable } from '@angular/core';
import { Resource, ResourceParams, ResourceAction } from 'ngx-resource';
import { ResourceMethod } from 'ngx-resource/src/Interfaces';
import { RequestMethod } from '@angular/http';
import { BaseServices } from './base.service';
import { Variables } from './variables';
import { Matricula } from '../modelos/matricula';

let variable = new Variables();

@Injectable()
@ResourceParams({
    url: variable.urlBase + "matricula/"
})
export class MatriculaServices extends BaseServices<Matricula> {

}