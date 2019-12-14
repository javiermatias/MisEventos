import {Injectable} from '@angular/core';
import {Variables} from './variables';
import {BaseServices} from './base.service';
import { Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';


export class Usuario {
  constructor(
    public id: number,
    public nombre?: string,
    public usuario?: string,
    public imagen?: string,
    public rol?: string,
    public email?:string,
    public fechaCreacion?: Date,
    public fechaBaja?: Date,
    public token?:string,    
    public idEncargado?:number,
    public idSocio?:number
  ) {  }
}


@Injectable()
export class UserServices extends BaseServices<Usuario> {
  public url:string = `${new Variables().urlBase}usuario`;
  
  constructor(public http:HttpClient){
    super(http);
     }

  
  login(usuario: string, clave: string) {
    return this.http.post(`${new Variables().urlBase}login/`, {usuario: usuario, clave: clave})
  }

  enviarEmailRecuperacion(email: string) {
    return this.http.post(`${new Variables().urlBase}emailrecuperacion/`, {email: email})
  }

  actual(): Observable<Usuario> {
    return this.http.get<Usuario>(`${this.url}/`)
  }

  getCurrent= function(){
    if (this.usuario == null) {
      try {
        this.usuario = JSON.parse(localStorage.usuario);
      }catch (err) {
        this.usuario = {}
      }
    }
    return this.usuario;
  }
  setCurrent = function(usuario: Usuario){
    this.usuario = usuario;
    localStorage.usuario = JSON.stringify(usuario) ;
    sessionStorage['token'] = usuario ? usuario['token'] : '';
  }

  subirImagen(Name: string, Bytes: number[]): Observable<any> {
    return this.http.post(`${this.url}/subirImagen/`, {'Name': Name, 'Bytes': Bytes})
  }
}

@Injectable()
export class UsuarioClaveServices extends BaseServices<Usuario> {
    public url:string = `${new Variables().urlBase}UsuarioClave`;
    constructor(public http:HttpClient){
        super(http);
    }
}
