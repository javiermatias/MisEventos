import { Component, ViewEncapsulation, OnInit } from '@angular/core';
import { AppConfig } from '../../app.config';
import { DashboardService } from './dashboard.service';
import { ReporteServices } from '../../servicios/reporte.service';
import { UserServices } from '../../servicios/users.service';
import { RolServices } from '../../servicios/rol.service';
import { Rol } from '../../servicios/rol.service';
import { roles } from '../../modelos/enums';
import { Evento, EventoServices } from '../../servicios/evento.service';
import { DatePipe } from '@angular/common';

@Component({
    selector: 'az-dashboard',
    encapsulation: ViewEncapsulation.None,
    templateUrl: './dashboard.component.html',
    styleUrls: ['./dashboard.component.scss'],
    providers: [DashboardService]
})
export class DashboardComponent
    implements OnInit {
    //Ver eventos para el socio
    public fechaDesde: string;
    public fechaHasta: string;
    public eventos: Evento[];
    public eventosOriginal: Evento[];

    //Ver eventos para el socio

    public config: any;
    public configFn: any;
    public bgColor: any;
    public date = new Date();
    public cantCursosEnProgreso = -1;
    public cantEncargados = -1;
    public cantSocios = -1;
    public cantEventosFinalizados = -1;
    public cantAsistencias = -1;
    public cantEspacios = -1;
    public crecimientoSocios = [];
    public user: any;

    constructor(private _appConfig: AppConfig
        , private _reporteServ: ReporteServices
        , private _userServices: UserServices,
        private _itemsService: EventoServices,
        private datePipe: DatePipe) {
        this.fechaDesde = this.datePipe.transform(new Date(), 'yyyy-MM-dd');
        this.fechaHasta = this.datePipe.transform(new Date(new Date().getFullYear(), 11, 30), 'yyyy-MM-dd');

        this.config = this._appConfig.config;
        this.configFn = this._appConfig;
    }

    ngOnInit() {
        this.user = this._userServices.getCurrent();
        if (this.user.rol === 'ADMIN') { this.loadAdminData(); } // TODO: actualizar esto. Debe verse por permisos y no por rol
        if (this.user.rol === 'ENCARGADO') { this.loadEncargadoData(); }
        if (this.user.rol === 'SOCIO') {
            this.loadSocioData();
            this.getItems();
        }
        if (this.user.rol === 'SECRETARIO') { this.loadSecretariaData(); }

    }

    getItems() {
        this._itemsService.query({ 'search': ' ' }).subscribe(items => {
            items.sort(function (a, b) {
                const c = new Date(a.fechaDesde);
                const d = new Date(b.fechaDesde);
                return d > c ? -1 : d < c ? 1 : 0;
            });
            this.eventos = items;
          /*   this.eventosOriginal = items;
            this.eventos = items.filter((item: Evento) => {
                return this.datePipe.transform(item.fechaDesde, 'yyyy-MM-dd') >= this.fechaDesde;
            }); */

        }
        );
    }
    public loadAdminData(): void {
        const self = this;
        this._reporteServ.getEntidadCount({ 'Entidad': 'cursos-en-progreso' }).subscribe(function (count) {
            self.cantCursosEnProgreso = count.count;
        });

        this._reporteServ.getEntidadCount({ 'Entidad': 'eventos-finalizados' }).subscribe(function (count) {
            self.cantEventosFinalizados = count.count;
        });
        this._reporteServ.getEntidadCount({ 'Entidad': 'socios' }).subscribe(function (count) {
            self.cantSocios = count.count;
        });
        /*   this._reporteServ.getEntidadCount({'Entidad':'asistencias'},function(count){
              self.cantAsistencias = count.count;
          }); */
        this._reporteServ.getEntidadCount({ 'Entidad': 'encargados' }).subscribe(function (count) {
            self.cantEncargados = count.count;
        });
        this._reporteServ.getEntidadCount({ 'Entidad': 'espacios' }).subscribe(function (count) {
            self.cantEspacios = count.count;
        });

        this._reporteServ.getCrecimientoSocios({}).subscribe(function (result) {
            self.crecimientoSocios = result;
        });
    }

    public loadEncargadoData(): void {
    }

    public loadSocioData(): void { }

    public loadSecretariaData(): void { }

}
