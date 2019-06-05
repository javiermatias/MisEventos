import { Injectable } from '@angular/core';
import { ResourceParams} from 'ngx-resource';
import { BaseServices } from './base.service';
import { Variables } from './variables';;
import { Recordatorio } from '../models/recordatorio';

let variable = new Variables();

@Injectable()
@ResourceParams({
    url: variable.urlBase + "recordatorio/"
})
export class RecordatorioServices extends BaseServices<Recordatorio> {

}

@Injectable()
@ResourceParams({
    url: variable.urlBase + "recordatorio/hoy"
})
export class RecordatorioHoyServices extends BaseServices<Recordatorio> {

}