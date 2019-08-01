import {Injectable} from '@angular/core';
import {ResourceParams} from 'ngx-resource';
import {BaseServices} from '../../../servicios/base.service';
import {Variables} from '../../../servicios/variables';

export class TipoEspacio {
    public id: number;
    public nombre: string;

  constructor (id, nombre) {
      this.id = id;
      this.nombre = nombre;
  }
}

let variable = new Variables();

@Injectable()
@ResourceParams({
  url:variable.urlBase + "tipoEspacio/"
})
export class TipoEspacioServices extends BaseServices<TipoEspacio> {
}
