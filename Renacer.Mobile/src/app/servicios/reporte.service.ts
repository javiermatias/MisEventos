import {Injectable} from '@angular/core';
import {BaseServices} from './base.service';
import {Variables} from './variables';
import {Tag} from './tag.service';
import {Socio} from './socio.service';
import {Evento} from './evento.service';
import { Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';


export class FiltroReporte {
  constructor(
    public barrio?: string,
    public sexo?: string,
    public Tags?: Array<Tag>,
    public edadDesde?: String,
    public edadHasta?: String,
    public fechaDesde?: String,
    public fechaHasta?: String
  ) {
    this.barrio = '';
    this.sexo = '';
    this.Tags = [];
    this.edadDesde = '';
    this.edadHasta = '';
    this.fechaDesde = '';
    this.fechaHasta = '';
  }
}

const variable = new Variables();

@Injectable()
export class ReporteServices extends BaseServices<Object> {

  public url = `${new Variables().urlBase}reporte/`;
  constructor(public http: HttpClient) {
    super(http);
     }

  tags(filtro: FiltroReporte): Observable<Tag[]> {
    return this.http.post<Tag[]>(`${this.url}tags`, filtro)
  }

  getEventosPortipo(): any {
    return this.http.post<Socio[]>(`${this.url}eventosportipo`, {})
}

  socios(filtro: FiltroReporte): Observable<Socio[]> {
    return this.http.post<Socio[]>(`${this.url}socios`, filtro)
  }

  eventos(filtro: FiltroReporte): Observable<Evento[]> {
    return this.http.post<Evento[]>(`${this.url}eventos`, filtro)
  }

  getEntidadCount(filtro: Object): Observable<any> {
    return this.http.get(`${this.url}count?Entidad=${filtro['Entidad']}`, filtro)
  }

  getCrecimientoSocios(filtro: FiltroReporte): Observable<any[]> {
    return this.http.post<any[]>(`${this.url}crecimiento-socios`, filtro)
  }

  getSociosPorEdad(filtro: FiltroReporte): Observable<any[]> {
    return this.http.post<any[]>(`${this.url}socios-por-edad`, filtro)
  }

  getRankingEventos(): Observable<any[]> {
    return this.http.post<any[]>(`${this.url}ranking`, {})
  }

  getIngresosPorTipoEvento(): Observable<any[]> {
    return this.http.post<any[]>(`${this.url}ingresosportipoevento`, {})
  }

  getIngresosPorTipo(): Observable<any[]> {
    return this.http.post<any[]>(`${this.url}ingresosportipo`, {})
  }

  getIngresosEnElTiempo(): Observable<any[]> {
    return this.http.post<any[]>(`${this.url}ingresoseneltiempo`, {})
  }


  getAsistenciasPorTipoEvento(): Observable<any[]> {
    return this.http.post<any[]>(`${this.url}asistenciasportipoevento`, {})
  }

  getInasistenciasPorTipoEvento(): Observable<any[]> {
    return this.http.post<any[]>(`${this.url}inasistenciasportipoevento`, {})
  }

  graficarAsistenciasPorDiaDeLaSemana(): Observable<any[]> {
    return this.http.post<any[]>(`${this.url}asistenciaspordiadelasemana`, {})
  }
}
