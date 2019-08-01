import {Injectable} from '@angular/core';
import {Resource, ResourceParams, ResourceAction} from 'ngx-resource';
import {ResourceMethod} from 'ngx-resource/src/Interfaces';
import {RequestMethod} from '@angular/http';
import {BaseServices} from './base.service';
import {Variables} from './variables';

export class Tag {
  constructor(
    public id: number,
    public nombre: string,
    public cantidad?: string
  ) {}
}

let variable = new Variables();

@Injectable()
@ResourceParams({
  url:variable.urlBase + "tag/"
})
export class TagServices extends BaseServices<Tag> {
}
