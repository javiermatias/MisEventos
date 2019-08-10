import { BaseServices } from "./base.service";
import { Calendario } from "../modelos/calendario";
import { ResourceParams } from "ngx-resource";
import { Injectable } from "@angular/core";
import { Variables } from "./variables";

let variable = new Variables();

@Injectable()
@ResourceParams({
  url:variable.urlBase + "calendario/"
})
export class CalendarioServices extends BaseServices<Calendario> {
}