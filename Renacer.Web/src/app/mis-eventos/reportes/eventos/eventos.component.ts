import { Component, OnInit } from '@angular/core';
import { TipoEvento, TipoEventoServices, EventoServices, Evento } from '../../../servicios/evento.service';
import { EspacioComun, EspacioServices } from '../../../servicios/espacio.service';
import { EncargadoEvento, EncargadoEventoServices } from '../../../servicios/encargado.service';
import { DatePipe } from '@angular/common';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'az-eventos',
  templateUrl: './eventos.component.html',
  styleUrls: ['./eventos.component.scss']
})
export class EventosComponent implements OnInit {

  public tiposEventos:TipoEvento[];
  public espacios:EspacioComun[];
  public encargados:EncargadoEvento[];
  public encargado:EncargadoEvento;
  public espacio:EspacioComun;
  public tipoEvento:TipoEvento;
  public gratuito:Boolean = false;
  public fechaDesde:string;
  public fechaHasta:string;
  public monto:number;
  public estado:string;
  public eventos :Evento[];
  public eventosOriginal :Evento[];
  constructor(
    private tipoEventoServ:TipoEventoServices,
    private encargadoServ:EncargadoEventoServices,
    private espacioServ:EspacioServices,
    private _itemsService:EventoServices,
    private datePipe: DatePipe,
    private toastrService: ToastrService
  ) { }

  ngOnInit() {
    this.tipoEventoServ.query({}).subscribe(_items => {
      this.tiposEventos = _items;
    });
    
    this.espacioServ.query({}).subscribe(items => {
      this.espacios = items;
    });

    this.encargadoServ.query({}).subscribe(items => {
      this.encargados = items;    
    });
    
    this._itemsService.query({'search':' '}).subscribe(items => {
      //this.eventos=items;
      this.eventosOriginal=items;   
    });

  }

  filtrar(){
    //Filtra por evento gratuito o no

    
    if(this.encargado == null && this.espacio == null && this.fechaDesde == null
      && this.fechaHasta == null && this.monto == null && this.estado==null &&
      this.tipoEvento == null){
        this.toastrService.error('Debe elegir un filtro');
        return;
    }
    this.eventos= this.eventosOriginal;   
    this.eventos = this.eventos.filter((item: Evento) => {
      return item.gratuito == this.gratuito;
    });

    if(this.encargado != null){
      this.eventos = this.eventos.filter((item: Evento) => {
        return item.idEncargado == this.encargado.id;
    });
    }
    if(this.espacio != null){
      this.eventos = this.eventos.filter((item: Evento) => {
        return item.idEspacio == this.espacio.id;
    });
    } 
    if(this.fechaDesde != null){
    
      this.eventos = this.eventos.filter((item: Evento) => {
      return this.datePipe.transform(item.fechaDesde, 'yyyy-MM-dd') >= this.fechaDesde;
     });
    }

    if(this.fechaHasta != null){
    
      this.eventos = this.eventos.filter((item: Evento) => {
      return this.datePipe.transform(item.fechaHasta, 'yyyy-MM-dd') <= this.fechaHasta;
     });
    }

    if(this.monto != null){
    
      this.eventos = this.eventos.filter((item: Evento) => {
      return item.monto <= this.monto;
     });
    }
    if(this.estado != null && this.estado != "Todos"){
      this.eventos = this.eventos.filter((item: Evento) => {
        return item.estado == this.estado;
    
    });
    }

    if(this.tipoEvento != null){
      this.eventos = this.eventos.filter((item: Evento) => {
        return item.idTipoEvento == this.tipoEvento.id;
    });
    } 
   
  
   
  }


}
