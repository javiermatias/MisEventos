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

export interface INewsShort {
  id: number;
  date: string;
  title: string;
  text: string;
}

interface INews extends INewsShort {
  image?: string;
  fullText: string;
}

@Injectable()
@ResourceParams({
  url: 'http://localhost:6913/api/Login'
})
export class UserServices extends Resource {

  @ResourceAction({
    isArray: true
  })
  query: ResourceMethod<IQueryInput, INewsShort[]>;

  @ResourceAction({
    path: '/{!id}'
  })
  get: ResourceMethod<{id: any}, INews>;


  //@ResourceAction({
  //   path: '/{!id}'
  // })
  //get2: ResourceMethodStrict<INews, {id: any}, INews>;

  @ResourceAction({
    method: RequestMethod.Post
  })
  save: ResourceMethod<INews, INews>;

  @ResourceAction({
    method: RequestMethod.Put,
    path: '/{!id}'
  })
  update: ResourceMethod<INews, INews>;

  @ResourceAction({
    method: RequestMethod.Delete,
    path: '/{!id}'
  })
  remove: ResourceMethod<{id: any}, any>;

  @ResourceAction({
    method: RequestMethod.Post
  })
  login: ResourceMethod<{username: string,password:string}, string>;

  login2 = function(username:string,password:string):string
  {
    if(username == "augusto" && password == "123123"){
      this.usuario = {
        'nombre':'Augusto Galan',
        'rol':'Administrador',
        'imagen':'assets/img/users/augusto.png'};
        return "success";
      }else{
        return "error";
      }
    };
    getCurrent=function(){
      return this.usuario;
    }
   usuario = {
        'nombre':'',
        'rol':'',
        'imagen':'',
      };



    // Alias to save
    create(data: INews, callback?: (res: INews) => any): INews {
      return this.save(data, callback);
    }

  }
