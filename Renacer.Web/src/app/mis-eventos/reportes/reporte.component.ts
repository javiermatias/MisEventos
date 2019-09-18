import { Component, OnInit ,OnDestroy, Input} from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import {FormGroup} from '@angular/forms';
import {DatePipe} from '@angular/common' ;
import { ToastrService, ToastrConfig } from 'ngx-toastr';
import { EventoServices ,Evento,TipoEventoServices,TipoEvento,DetalleEvento} from '../../servicios/evento.service';
import { EncargadoEvento,EncargadoEventoServices} from '../../servicios/encargado.service';
import { EspacioComun,EspacioServices} from '../../servicios/espacio.service';

@Component({
  selector: 'az-reportes',
  templateUrl: './reporte.component.html'
})
export class ReporteComponent implements OnInit,OnDestroy  {

  @Input() _item = new Evento();
  @Input() evento:string;
  public tiposDeEventos:TipoEvento[];
  public espacios:EspacioComun[];
  public responsables:EncargadoEvento[];
  public horarios:any[] = new Array<any>();
  public horario:any = {'dia':'','horaDesde':'','horaHasta':''};

  id: string;
  private sub: any;

  public diaSemanas:string[] = ["Lunes","Martes","Miercoles","Jueves","Viernes","Sabado","Domingo"];

  constructor(
    private _itemsService:EventoServices,
    private tipoEventoServ:TipoEventoServices,
    private responsableServ:EncargadoEventoServices,
    private espacioServ:EspacioServices,
    private route: ActivatedRoute,
    private mensajeServ: ToastrService)
    {  }

    ngOnInit()
    {
    //  this.getTiposEventos();
      this.getEspacios();
      this.getResponsables();
      this.sub = this.route.params.subscribe(params => {
        this.id = params['id'];
        if(this.id == "nuevo") this.nuevoItem();
        else this.verItem();
      });
    }

    ngOnDestroy() {
      this.sub.unsubscribe();
    }

    onSubmit(myForm: FormGroup)
    {
      let newEvento = Object.assign({}, this._item);
      this.saveItem(newEvento)
    }

    verItem()
    {
      this._itemsService.get(this.id).subscribe(resp => {
        this._item = resp;

      });
    }
    nuevoItem()
    {
      this._item =  new Evento();
      this._item.responsable = new EncargadoEvento(0);
      this._item.espacio = new EspacioComun(0);
      this._item.tipoEvento = new TipoEvento(0);
    }
    limpiarForm()
    {
      this.nuevoItem();
    }

    saveItem(item:Evento):any
    {
      if(item.id == 0)
      {
        item.listaDetalleEvento = this.armarDetalleEvento(item,this.horarios);

        this._itemsService.save(item).subscribe(resp => {
          item = resp;
          this.mensajeServ.success('Se ha creado un nuevo Evento!', 'Aviso!');
        });
      }
      else
      {
        this._itemsService.update(item).subscribe(resp => {
          this.mensajeServ.success('Se han guardado los cambios!', 'Aviso!');
        });
      }
    }

    getEspacios(){
      this.espacioServ.query({}).subscribe(items => {
        this.espacios = [];
        for(var i = 0; i < items.length;i++){
          var itemAux = new EspacioComun(0,"");
          itemAux.id = items[i].id;
          itemAux.nombre = items[i].nombre;
          this.espacios.push(itemAux);
        }
      });
    }

    getResponsables(){
      this.responsableServ.query({}).subscribe(items => {
        this.responsables = [];
        for(var i = 0; i < items.length;i++){
          var itemAux = new EncargadoEvento(0,"");
          itemAux.id = items[i].id;
          itemAux.nombre = items[i].nombre;
          itemAux.apellido = items[i].apellido;
          this.responsables.push(itemAux);
        }
      });
    }

    agregarHorario(){
      this.horarios.push(
        Object.assign({}, this.horario)
      )
      this.horario = {'dia':'','horaDesde':'','horaHasta':''};
    }

    armarDetalleEvento(item:Evento,horarios:any[]):Array<DetalleEvento>{
      let  listaDetalleEvento:Array<DetalleEvento> = new Array();
      let diaFinal = new Date(item.fechaHasta);

      for(let index_horario = 0;index_horario< horarios.length;index_horario++){
        let horario = horarios[index_horario];
        let diaActual =  new Date(item.fechaDesde);
        let numeroDelDia = this.diaSemanas.indexOf(horario.dia)+1;

        while(diaActual < diaFinal){
          if(diaActual.getDay() == numeroDelDia){
            let detalle = new DetalleEvento(0);
            detalle.nombre = "";
            detalle.descripcion = "";
            detalle.responsable = item.responsable;
            detalle.espacio = item.espacio;
            detalle.fechaDesde =new Date(diaActual.getFullYear() + "-" + (diaActual.getMonth() + 1) + "-" + diaActual.getDate() + " " + horario.horaDesde);
            detalle.fechaHasta =new Date(diaActual.getFullYear() + "-" + (diaActual.getMonth() + 1) + "-" + diaActual.getDate() + " " + horario.horaHasta);

            listaDetalleEvento.push(detalle);
          }

          diaActual = this.addDays(diaActual,1);
        }
      }
      return listaDetalleEvento;
    }

    addDays(date, days) {
      var result = new Date(date);
      result.setDate(result.getDate() + days);
      return result;
    }

  }
