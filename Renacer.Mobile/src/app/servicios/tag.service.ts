import {Injectable} from '@angular/core';
import {BaseServices} from './base.service';
import {Variables} from './variables';
import { HttpClient } from "@angular/common/http";

export class Tag {
  constructor(
    public id: number,
    public nombre: string,
    public cantidad?: string
  ) {}
}

let variable = new Variables();

@Injectable()
export class TagServices extends BaseServices<Tag> {
  public url:string = `${new Variables().urlBase}tag`;
  constructor(public http:HttpClient){
    super(http);
     }
}
