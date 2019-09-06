import { Injectable } from '@angular/core';
import { ResourceParams} from 'ngx-resource';
import { BaseServices } from './base.service';
import { Variables } from './variables';
import { Contrasenia } from '../modelos/contrasenia';



let variable = new Variables();

@Injectable()
@ResourceParams({
    url: variable.urlBase + "cambioContrasenia/"
})




export class CambioContraseniaService extends BaseServices<Contrasenia>{

  

}