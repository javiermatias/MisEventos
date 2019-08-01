import { Injectable } from '@angular/core';
import { Resource, ResourceParams, ResourceAction } from 'ngx-resource';
import { ResourceMethod } from 'ngx-resource/src/Interfaces';
import { RequestMethod } from '@angular/http';
import { BaseServices } from './base.service';
import { Variables } from './variables';
import { MatriculaXsocio } from '../modelos/matricula-xsocio';


let variable = new Variables();

@Injectable()
@ResourceParams({
    url: variable.urlBase + "matriculasocio/"
})


export class MatriculaxsocioService extends BaseServices<MatriculaXsocio>{

  

}
