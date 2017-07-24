import {Injectable} from '@angular/core';
import {Resource, ResourceParams, ResourceAction} from 'ngx-resource';
import {ResourceMethod} from 'ngx-resource/src/Interfaces';
import {RequestMethod} from '@angular/http';

interface IQueryInput {
  page?: number;
  perPage?: number;
  dateFrom?: string;
  dateTo?: string;
  isRead?: string;
}

export class BaseEntity{
  equals(compareItem:object) : boolean {
      return this["id"] == compareItem["id"];
  }
  
}

@Injectable()
@ResourceParams({
  path: 'http://localhost:6913/api/'
})
export class BaseServices<T> extends Resource {

  @ResourceAction({
    isArray: true
  })
  query: ResourceMethod<IQueryInput, T[]>;

  @ResourceAction({
    path: '/{!id}'
  })
  get: ResourceMethod<{id: any}, T>;

  @ResourceAction({
    method: RequestMethod.Post
  })
  save: ResourceMethod<T, Object>;

  @ResourceAction({
    method: RequestMethod.Put,
    path: '/{!id}'
  })
  update: ResourceMethod<T, Object>;

  @ResourceAction({
    method: RequestMethod.Delete,
    path: '/{!id}'
  })
  remove: ResourceMethod<{id: any}, any>;

}
