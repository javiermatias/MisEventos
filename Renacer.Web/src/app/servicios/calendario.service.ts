import { BaseServices } from "./base.service";
import { Calendario } from "../modelos/calendario";
import { Injectable } from "@angular/core";
import { Variables } from "./variables";
import { HttpClient } from "@angular/common/http";

let variable = new Variables();



@Injectable()
export class CalendarioServices extends BaseServices<Calendario> {
  public url:string = `${variable.urlBase}calendario/`;
  
  constructor(public http:HttpClient){
    super(http);
     }

}