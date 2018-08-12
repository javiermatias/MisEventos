import { Component, OnInit ,OnDestroy, Input,OnChanges} from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import {FormGroup} from '@angular/forms';
import {DatePipe} from '@angular/common' ;
import { ToastrService, ToastrConfig } from 'ngx-toastr';
import { EventoServices ,Evento,TipoEventoServices,TipoEvento,DetalleEvento,InscripcionServices,Inscripcion} from '../../resources/evento.service';
import { EncargadoEvento,EncargadoEventoServices} from '../../resources/encargado.service';
import { EspacioComun,EspacioServices} from '../../resources/espacio.service';
import { AsistenciaServices,Asistencia} from '../../resources/asistencia.service';
import { Socio} from '../../resources/socio.service';


@Component({
  selector: 'az-asistencia',
  templateUrl: './asistencia.component.html',
  styleUrls: ['./asistencia.component.css']
})
export class AsistenciaComponent implements OnInit {

  public eventoSeleccionado:Evento;
  public eventoSelected:string;
  public cursoSelected:string;
  public _item = new Asistencia(0,"");
  @Input() detalle:DetalleEvento ;
  public listaInscripciones:any[] ;
  public fechaActual:string;

  constructor(private eventoServ:EventoServices
    ,private asistenciaServ:AsistenciaServices
    ,private inscripcionServ:InscripcionServices
    ,private mensajeServ: ToastrService) { }

  ngOnInit() {
   this.fechaActual = new Date().toISOString();
  }

  ngOnChanges(){
    if(this.detalle.asistencia){
      if(this.detalle.asistencia.id != 0){
        this.asistenciaServ.get({"id":this.detalle.asistencia.id},resp => {
          this._item = resp;
                   })  
        this.inscripcionServ.query({"idEvento":this.detalle.idEvento},resp => {
           this.listaInscripciones = resp;
        })  
        }
      }
    }

  guardarAsistencia(){
    this.asistenciaServ.save(this._item,resp => {
      this.asistenciaServ.get({"id":this.detalle.asistencia.id},resp => {
        this._item = resp;
        this.mensajeServ.success('Se han guardado las asistencias!', 'Aviso!');
                 }) 
      
    });
  }

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
   }
  
    
  }

}
