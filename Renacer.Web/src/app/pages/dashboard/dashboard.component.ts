import { Component, ViewEncapsulation, OnInit } from '@angular/core';
import { AppConfig } from '../../app.config';
import { DashboardService } from './dashboard.service';
import { ReporteServices } from '../../servicios/reporte.service';
import { UserServices } from '../../servicios/users.service';
import { RolServices } from '../../servicios/rol.service';
import { Rol } from '../../servicios/rol.service';
import { roles } from '../../modelos/enums';
import { Evento, EventoServices, InscripcionServices } from '../../servicios/evento.service';
import { DatePipe } from '@angular/common';
import { AsistenciaEventoServices } from '../../servicios/asistencia.service';
import { AsistenciaEvento } from '../../modelos/asistencia-evento';

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

    public config: any;
    public configFn: any;
    public bgColor: any;
    public date = new Date();
    public cantCursosNuevos = -1;
    public cantCursosEnProgreso = -1;
    public cantEncargados = -1;
    public cantSocios = -1;
    public cantSociosSistema= -1;
    public cantEventosFinalizados = -1;
    public cantAsistencias = -1;
    public cantEspacios = -1;
    public crecimientoSocios = [];

    public cantSecretarios=-1;
    public user: any;

    //Dashboard socio
    public cantEventosInscriptos = -1;
    public cantEventosAdeudados = -1;
    public cantEncuestasCompletadas = -1;

    public cantIntereses = -1;

    //Dashboard encargado
 
    public cantEventosAsignados=-1;

    public cantEventosProgreso=-1;

    public cantEventosAsistencia=-1;

   // public eventosEncargado:AsistenciaEvento[];

    constructor(private _appConfig: AppConfig
        , private _reporteServ: ReporteServices
        , private _userServices: UserServices,  
        private inscripcionServ:InscripcionServices,
        private asistenciaServ:AsistenciaEventoServices,
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
            //this.getItems();
        }
        if (this.user.rol === 'SECRETARIO') { this.loadSecretariaData(); }

    }

  
    public loadAdminData(): void {
        const self = this;
        this._reporteServ.getEntidadCount({ 'Entidad': 'cursos-en-progreso' }).subscribe(function (count) {
            self.cantCursosEnProgreso = count.count;
        });

        this._reporteServ.getEntidadCount({ 'Entidad': 'eventos-nuevos' }).subscribe(function (count) {
            self.cantCursosNuevos = count.count;
        });

        this._reporteServ.getEntidadCount({ 'Entidad': 'eventos-finalizados' }).subscribe(function (count) {
            self.cantEventosFinalizados = count.count;
        });
        this._reporteServ.getEntidadCount({ 'Entidad': 'socios' }).subscribe(function (count) {
            self.cantSocios = count.count;
        });
        this._reporteServ.getEntidadCount({ 'Entidad': 'sociosSistema' }).subscribe(function (count) {
            self.cantSociosSistema = count.count;
        });


         this._reporteServ.getEntidadCount({'Entidad': 'asistencias'}).subscribe(function(count){
              self.cantAsistencias = count.count;
          });

        this._reporteServ.getEntidadCount({ 'Entidad': 'encargados' }).subscribe(function (count) {
            self.cantEncargados = count.count;
        });
        this._reporteServ.getEntidadCount({ 'Entidad': 'espacios' }).subscribe(function (count) {
            self.cantEspacios = count.count;
        });

        this._reporteServ.getEntidadCount({ 'Entidad': 'secretarios' }).subscribe(function (count) {
            self.cantSecretarios = count.count;
        });

        //this._reporteServ.getCrecimientoSocios({}).subscribe(function (result) {
          //  self.crecimientoSocios = result;
        //});
    }



    public loadSocioData(): void { 
        const self = this;
        this._reporteServ.getEntidadCount({ 'Entidad': 'eventos-nuevos' }).subscribe(function (count) {
            self.cantCursosNuevos = count.count;
        });

        this._reporteServ.getsociointereses(this.user.idSocio).subscribe(function (count) {
            //console.log(count);
            self.cantIntereses = count;
        });
        this.inscripcionServ.query({'idSocio':this.user.idSocio}).subscribe(items => {
            
            let cantAdeudado =0;
           
            let cantEncuestas=0;
            items.forEach(inscripcion => {
                
                if(inscripcion.estado == 'ADEUDADO'){
                    cantAdeudado++;
                }

                if(inscripcion.estadoEncuesta){
                    cantEncuestas++;
                }
            });
       
            this.cantEventosInscriptos = items.length;
            this.cantEventosAdeudados = cantAdeudado;
            this.cantEncuestasCompletadas = cantEncuestas;

           
            }
         );
    }

    public loadSecretariaData(): void { }


    public loadEncargadoData(): void {
       

        this.asistenciaServ.query({'idEncargado':this.user.idEncargado}).subscribe(result => {
          
            let _cantEventosProgreso = 0;

            let _cantEventosAsistencia = 0;

            this.cantEventosAsignados = result.length;

            result.forEach(element => {
                
                _cantEventosAsistencia += element.porcentajeAsistencia;
                if(element.evento.estado == 'Progreso'){
                    _cantEventosProgreso++;
                }

            });
            
            this.cantEventosAsistencia= Math.round(_cantEventosAsistencia /= this.cantEventosAsignados);
            this.cantEventosProgreso = _cantEventosProgreso;
          console.log(result)
         });
      
}

}
