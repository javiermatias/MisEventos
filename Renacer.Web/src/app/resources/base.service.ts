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

@Injectable()
@ResourceParams({
  url: 'http://localhost:6913/api/Login'
})
export class BaseServices extends Resource {

  @ResourceAction({
    isArray: true
  })
  query: ResourceMethod<IQueryInput, Object[]>;

  @ResourceAction({
    path: '/{!id}'
  })
  get: ResourceMethod<{id: any}, Object>;

  @ResourceAction({
    method: RequestMethod.Post
  })
  save: ResourceMethod<Object, Object>;

  @ResourceAction({
    method: RequestMethod.Put,
    path: '/{!id}'
  })
  update: ResourceMethod<Object, Object>;

  @ResourceAction({
    method: RequestMethod.Delete,
    path: '/{!id}'
  })
  remove: ResourceMethod<{id: any}, any>;

}
