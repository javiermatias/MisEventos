import { Component, ViewEncapsulation,OnInit } from '@angular/core';
import { AppConfig } from "../../app.config";
import { DashboardService } from './dashboard.service';
import {ReporteServices} from '../../resources/reporte.service';
import { UserServices } from '../../resources/users.service';
import { RolServices } from '../../resources/rol.service';
import { Rol } from '../../resources/rol.service';

@Component({
  selector: 'az-dashboard',
  encapsulation: ViewEncapsulation.None,
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.scss'],
  providers: [ DashboardService ] 
})
export class DashboardComponent  { 
    public config:any;
    public configFn:any; 
    public bgColor:any;
    public date = new Date(); 
    public cantCursos = -1;
    public cantEncargados = -1;
    public cantSocios = -1;
    public cantEventos = -1;
    public cantAsistencias = -1;
    public cantEspacios = -1;
    public crecimientoSocios =[];
    public user : any;
    private rol: Rol;
    constructor(private _appConfig:AppConfig
        , private _reporteServ:ReporteServices
        ,private _userServices:UserServices,
        private _rolService: RolServices){

        this.config = this._appConfig.config;
        this.configFn = this._appConfig;
    }
    
    ngOnInit()
    {
      this.rol = this._rolService.getCurrent();
      this.user =  this._userServices.getCurrent();
      if(this.rol.nombre == "Administrador") this.loadAdminData(); // TODO: actualizar esto. Debe verse por permisos y no por rol
      if(this.rol.nombre == "Encargado") this.loadEncargadoData();
      if(this.rol.nombre == "Socio") this.loadSocioData();
    }

    public loadAdminData():void {
        var self = this;
        this._reporteServ.getEntidadCount({"Entidad":"cursos"},function(count){
          self.cantCursos = count.count;
      });

      this._reporteServ.getEntidadCount({"Entidad":"eventos"},function(count){
          self.cantEventos = count.count;
      });
      this._reporteServ.getEntidadCount({"Entidad":"socios"},function(count){
          self.cantSocios = count.count;
      });
      this._reporteServ.getEntidadCount({"Entidad":"asistencias"},function(count){
          self.cantAsistencias = count.count;
      });
      this._reporteServ.getEntidadCount({"Entidad":"encargados"},function(count){
          self.cantEncargados = count.count;
      });
      this._reporteServ.getEntidadCount({"Entidad":"espacios"},function(count){
          self.cantEspacios = count.count;
      });

      this._reporteServ.getCrecimientoSocios({},function(result){
          self.crecimientoSocios = result;
      });
    }


    public loadEncargadoData():void{


    }


    public loadSocioData():void{}

}
