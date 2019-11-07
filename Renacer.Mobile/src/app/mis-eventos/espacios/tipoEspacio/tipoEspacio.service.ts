import {Injectable} from '@angular/core';
import {BaseServices} from '../../../servicios/base.service';
import {Variables} from '../../../servicios/variables';
import { HttpClient } from "@angular/common/http";

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
export class TipoEspacioServices extends BaseServices<TipoEspacio> {
  public url:string = `${new Variables().urlBase}tipoEspacio`;
  
    constructor(http:HttpClient){
    super(http);
     }
}
