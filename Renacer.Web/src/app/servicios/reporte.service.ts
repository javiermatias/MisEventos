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
    public fechaHasta?: String,
    public estadoCivil?: String
  
  ) {
    this.barrio = '';
    this.sexo = '';
    this.Tags = [];
    this.edadDesde = '';
    this.edadHasta = '';
    this.fechaDesde = '';
    this.fechaHasta = '';
    this.estadoCivil = '';
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

  getCrecimientoSocios(rangoDeFechas: any): Observable<any[]> {
    return this.http.post<any[]>(`${this.url}crecimiento-socios`, rangoDeFechas)
  }
   getSociosMasActivos(rangoDeFechas: any): Observable<any[]> {
    return this.http.post<any[]>(`${this.url}sociosmasactivos`, rangoDeFechas)
  }

  getSociosPorEdad(rangoDeFechas: any): Observable<any[]> {
    return this.http.post<any[]>(`${this.url}socios-por-edad`, rangoDeFechas)
  }

  getRankingEventos(filtro: any): Observable<any[]> {
    return this.http.post<any[]>(`${this.url}ranking`, filtro)
  }

  getIngresosPorTipoEvento(rangoDeFechas: any): Observable<any[]> {
    return this.http.post<any[]>(`${this.url}ingresosportipoevento`,  rangoDeFechas)
  }

  getIngresosPorTipo(rangoDeFechas: any): Observable<any[]> {
    return this.http.post<any[]>(`${this.url}ingresosportipo`,  rangoDeFechas)
  }

  getIngresosEnElTiempo(rangoDeFechas: any): Observable<any[]> {
    return this.http.post<any[]>(`${this.url}ingresoseneltiempo`, rangoDeFechas)
  }

  getCantidadIngresosEnElTiempo(rangoDeFechas: any): Observable<any[]> {
    return this.http.post<any[]>(`${this.url}CantidadIngresosEnElTiempo`, rangoDeFechas)
  }

 
  getAsistenciasPorTipoEvento(): Observable<any[]> {
    return this.http.post<any[]>(`${this.url}asistenciasportipoevento`, {})
  }

  getAsistenciasPorEspacio(): Observable<any[]> {
    return this.http.post<any[]>(`${this.url}asistenciasporespacio`, {})
  }

  getInasistenciasPorTipoEvento(): Observable<any[]> {
    return this.http.post<any[]>(`${this.url}inasistenciasportipoevento`, {})
  }

  graficarAsistenciasPorDiaDeLaSemana(rangoDeFechas: any): Observable<any[]> {
    return this.http.post<any[]>(`${this.url}asistenciaspordiadelasemana`, rangoDeFechas)
  }


  getAsistenciasXsocioXevento(idEvento: number): Observable<any[]> {
    return this.http.post<any[]>(`${this.url}asistenciasporevento`, idEvento)
  }

  getsociointereses(idSocio: number): Observable<number> {
    return this.http.post<number>(`${this.url}getsociointereses`,idSocio)
  }
 



}
