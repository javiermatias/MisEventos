import { HttpClient,HttpParams } from '@angular/common/http';
import {Injectable} from '@angular/core';
import { Variables } from "./variables";
import { Observable } from 'rxjs/observable';

let variable = new Variables();


interface IQueryInput {
  page?: number;
  perPage?: number;
  dateFrom?: string
  limit?: number;
  dateTo?: string;
  isRead?: string;
  search?: string;
  fechaDesde?: Date;
  fechaHasta?: Date;
  idEvento?: number;
  idSocio?: number;
  idEncargado?:number;
  idEspacio?:number;
  id?: number;
  rol?: string;
  estado?: string;
}

export class BaseEntity {
  equals(compareItem: object): boolean {
    return this["id"] == compareItem["id"];
  }
}

BaseEntity.prototype.equals = function (o) {
  return this["id"] === o["id"];
};


@Injectable()
export class BaseServices<T> {

  public url:string = variable.urlBase;

  constructor(public http:HttpClient){
 
  }

  query(query: IQueryInput): Observable<T[]>{
    let Params = new HttpParams();   
    Object.keys(query).forEach(function (item) {  
      Params = Params.append(item, query[item]);
    });
   
    return this.http.get<T[]>(`${this.url}`,  { params:  Params });
  }

  get(id:any):Observable<T>
  {
    return this.http.get<T>(`${this.url}/${id}`);
  }

  getUsuario(req:{ tipoDni: number, dni: number }):Observable<T>{
    return this.http.get<T>(this.url);
  } 

  save(entidad:T):Observable<T>{
    return this.http.post<T>(this.url,entidad);
  }
  update(entidad:T):Observable<T>{
    return this.http.post<T>(this.url,entidad);
  }

  remove(value:{id:any}):Observable<any>{
    return this.http.delete(`${this.url}/${value.id}`);
  }

}
