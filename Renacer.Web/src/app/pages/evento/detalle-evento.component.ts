import { Component, OnInit ,OnDestroy, Input} from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { FormGroup } from '@angular/forms';
import { DatePipe } from '@angular/common' ;
import { ToastrService, ToastrConfig } from 'ngx-toastr';
import { EventoServices ,Evento,TipoEventoServices,TipoEvento,DetalleEvento,DetalleEventoServices} from '../../resources/evento.service';
import { EncargadoEvento,EncargadoEventoServices} from '../../resources/encargado.service';
import { EspacioComun,EspacioServices} from '../../resources/espacio.service';
import { AppConfig } from "../../app.config";

@Component({
  selector: 'az-detalle-evento',
  templateUrl: './detalle-evento.component.html'
})
export class DetalleEventoComponent implements OnInit,OnDestroy  {

  @Input() _item = new DetalleEvento(0);
  public espacios:EspacioComun[];
  public responsables:EncargadoEvento[];

  id: string;
  private sub: any;
  public diaSemanas:string[] = ["Lunes","Martes","Miercoles","Jueves","Viernes","Sabado","Domingo"];

  constructor(
    private _itemsService:DetalleEventoServices,
    private tipoEventoServ:TipoEventoServices,
    private responsableServ:EncargadoEventoServices,
    private espacioServ:EspacioServices,
    private route: ActivatedRoute,
    private mensajeServ: ToastrService)
    {  }

    ngOnInit()
    {
      this.getEspacios();
      this.getResponsables();
      this.sub = this.route.params.subscribe(params => {
        this.id = params['idDetalle'];
        this.verItem();
        jQuery('.modal-backdrop').remove();
        jQuery('.modal-open').removeClass('modal-open');
      });
    }

    ngOnDestroy() {
      this.sub.unsubscribe();
    }

    onSubmit(myForm: FormGroup)
    {
      let detalleEvento = Object.assign({}, this._item);
      this.saveItem(detalleEvento)
    }

    verItem()
    {
      this._itemsService.get({"id":this.id},(resp:DetalleEvento) => {
        this._item = resp;

        for(var i = 0; i < this.espacios.length;i++){
          if(this._item.espacio.id = this.espacios[i].id) this.espacios[i] = this._item.espacio;
        }


      });
    }

    saveItem(item:DetalleEvento):any
    {
      this._itemsService.update(item,(resp:DetalleEvento) => {
        this.mensajeServ.success('Se han guardado los cambios!', 'Aviso!');
      });
    }

    getEspacios(){
      this.espacioServ.query({},(items) => {
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
      this.responsableServ.query({},(items) => {
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

    addDays(date, days) {
      var result = new Date(date);
      result.setDate(result.getDate() + days);
      return result;
    }

  }
