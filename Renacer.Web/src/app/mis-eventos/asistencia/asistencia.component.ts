import { Component, OnInit ,OnDestroy, Input,OnChanges} from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import {FormGroup} from '@angular/forms';
import {DatePipe} from '@angular/common' ;
import { ToastrService, ToastrConfig } from 'ngx-toastr';
import { EventoServices ,Evento,TipoEventoServices,TipoEvento,DetalleEvento,InscripcionServices,Inscripcion, DetalleEventoServices} from '../../servicios/evento.service';
import { EncargadoEvento,EncargadoEventoServices} from '../../servicios/encargado.service';
import { EspacioComun,EspacioServices} from '../../servicios/espacio.service';
import { AsistenciaServices,Asistencia, AsistenciaEventoServices} from '../../servicios/asistencia.service';
import { Socio} from '../../servicios/socio.service';
import { RolServices, Rol } from '../../servicios/rol.service';
import { Usuario, UserServices } from '../../servicios/users.service';
import { AsistenciaEvento } from '../../modelos/asistencia-evento';


@Component({
  selector: 'az-asistencia',
  templateUrl: './asistencia.component.html'
})
export class AsistenciaComponent implements OnInit {

  public eventos:Evento[];

  public eventosEncargado:AsistenciaEvento[];
  //seleccionEvento
   public eventoSeleccionado:Evento;
  //public eventoSelected:string;
  //public cursoSelected:string;
  public usuario:Usuario;
  //public _item = new Asistencia(0,"");
  //@Input() detalle:DetalleEvento ;
  public listaInscripciones:any[] ;
  public fechaActual:string;
  
  public detalleEvento:DetalleEvento[];
  public detalleSelecionado:DetalleEvento;
  public listaAsistencias:Boolean=true; //pantalla principal
  public nuevaAsistencia:Boolean=false; //muestra la nueva asistencia
  public mostrarGrilla:boolean=false; //muestra detalle tomar/ver
  searchText = '';
  public mostrarEvento:Boolean=false;
  verListaAsistencia:Boolean=false;
  
  constructor(private _eventoServ:EventoServices
    ,private asistenciaServ:AsistenciaEventoServices  
    ,private mensajeServ: ToastrService,
    private _userService: UserServices,
    private _detalleEvento:DetalleEventoServices) { }

  ngOnInit() {
   //this.fechaActual = new Date().toISOString();
   this.usuario = this._userService.getCurrent();
   //console.log(this.usuario.idEncargado);
   //this.getEventosXencargado();
   this.getAsistenciasCursos();
  }
  getEventosXencargado(){
    
    this._eventoServ.query(
      {'idEncargado':this.usuario.idEncargado}).subscribe
      (items => {
        this.eventos = items;
        // console.log(items);
    });

  }

  getAsistenciasCursos(){

    this.asistenciaServ.query({'idEncargado':this.usuario.idEncargado}).subscribe(result => {
      this.eventosEncargado = result;
      console.log(result);      
      this.mostrarEvento=true;
     });
  }

  getAsistenciaDetalleEvento(_idEvento:number){
    this._detalleEvento.query(
      {'idEvento':_idEvento,
      'idEncargado':this.usuario.idEncargado}).subscribe
      (items => {          
          this.detalleEvento= items;
          this.mostrarGrilla=true;
        //console.log(items);
    });


  }


 
  cambioEvento(evento:Evento){
    this.mostrarEvento=false;
    this.getAsistenciaDetalleEvento(evento.id);
  
  }

  volver(){
    this.mostrarGrilla=false;
    this.getAsistenciasCursos();
    //this.mostrarEvento=true;
  }

  ngOnChanges(){
    
  }

  tomarAsistencia(item:DetalleEvento){
    this.detalleSelecionado=item;
    this.listaAsistencias=false;
    this.nuevaAsistencia=true;
  // console.log(item);
  }

  guardo(cancelar: boolean) {
    this.listaAsistencias=true;
    this.nuevaAsistencia=false;
    if (cancelar) {
      this.detalleSelecionado.asistencia=true;
      this._detalleEvento.update(this.detalleSelecionado).subscribe(resp => {
        //this.cambioEvento();
      });
       //Aca deberia guardar la asistencia del detalle evento.
    }

  }

  volverAsistencia(cancelar: boolean){
    this.listaAsistencias=true;
    this.verListaAsistencia=false;

  }
 
  verAsistencia(item:DetalleEvento){
    this.detalleSelecionado=item;
    this.listaAsistencias=false;
    this.verListaAsistencia=true;
   // console.log(item);
  }



}
