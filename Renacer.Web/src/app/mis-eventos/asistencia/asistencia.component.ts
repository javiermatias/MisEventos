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

  public eventosSocios:AsistenciaEvento[];
  //seleccionEvento
   public eventoSeleccionado:Evento;
  //public eventoSelected:string;
  //public cursoSelected:string;
  public usuario:Usuario;
  //public _item = new Asistencia(0,"");
  //@Input() detalle:DetalleEvento ;
  public listaInscripciones:any[] ;
  public fechaActual:string;
  public mostrarGrilla:boolean=false;
  public detalleEvento:DetalleEvento[];
  public detalleSelecionado:DetalleEvento;
  public showRecordatorio:Boolean=false;
  searchText = '';
  public mostrarEvento:Boolean=true;

  constructor(private _eventoServ:EventoServices
    ,private asistenciaServ:AsistenciaEventoServices  
    ,private mensajeServ: ToastrService,
    private _userService: UserServices,
    private _detalleEvento:DetalleEventoServices) { }

  ngOnInit() {
   //this.fechaActual = new Date().toISOString();
   this.usuario = this._userService.getCurrent();
   //console.log(this.usuario.idEncargado);
   this.getEventosXencargado();
   this.getAsistenciasCursos();
  }
  getEventosXencargado(){
    
    this._eventoServ.query(
      {'idEncargado':this.usuario.idEncargado}).subscribe
      (items => {
        this.eventos = items;
         console.log(items);
    });

  }

  getAsistenciasCursos(){

    this.asistenciaServ.query({'idEncargado':this.usuario.idEncargado}).subscribe(result => {
      this.eventosSocios = result;
      
      console.log(result)
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
    this.mostrarEvento=true;
  }

  ngOnChanges(){
    
  }

  tomarAsistencia(item:DetalleEvento){
    this.detalleSelecionado=item;
    this.showRecordatorio=true;
   console.log(item);
  }

  guardo(cancelar: boolean) {
    this.showRecordatorio = false;
    if (cancelar) {
      this.detalleSelecionado.asistencia=true;
      this._detalleEvento.update(this.detalleSelecionado).subscribe(resp => {
        //this.cambioEvento();
      });
       //Aca deberia guardar la asistencia del detalle evento.
    }

  }
  guardarAsistencia(){
/*     this.asistenciaServ.save(this._item,resp => {
      this.asistenciaServ.get({"id":this.detalle.asistencia.id},resp => {
        this._item = resp;
        this.mensajeServ.success('Se han guardado las asistencias!', 'Aviso!');
                 }) 
      
    }); */
  }

  verAsistencia(item:DetalleEvento){

    console.log(item);
  }


/* 
  estaPresente(idSocio){
  if(this._item.listaSocios == null) this._item.listaSocios = new Array<Socio>();
   return this._item.listaSocios.filter(item => item.id == idSocio).length == 1
  }

  togglePresente(socio){
  if(this._item.listaSocios == null) this._item.listaSocios = new Array<Socio>();

      if(!this.estaPresente(socio.id)){
        delete socio.$id;
        this._item.listaSocios.push(socio);
      }
   else{
  var itemAux = this._item.listaSocios.filter(item => item.id == socio.id)[0];
  var index = this._item.listaSocios.indexOf(itemAux, 0);
  this._item.listaSocios.splice(index, 1);
   } */
  
    
 // }

}
