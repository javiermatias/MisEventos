import { Component, OnInit ,OnDestroy, Input} from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { FormGroup } from '@angular/forms';
import { DatePipe } from '@angular/common' ;
import { ToastrService, ToastrConfig } from 'ngx-toastr';
import { EventoServices ,Evento,TipoEventoServices,TipoEvento,DetalleEvento,DetalleEventoServices} from '../../servicios/evento.service';
import { EncargadoEvento,EncargadoEventoServices} from '../../servicios/encargado.service';
import { EspacioComun,EspacioServices} from '../../servicios/espacio.service';
import { AppConfig } from "../../app.config";

@Component({
  selector: 'az-detalle-evento',
  templateUrl: './detalle-evento.component.html'
})
export class DetalleEventoComponent implements OnInit,OnDestroy  {

  @Input() _item = new DetalleEvento(0);
  public espacios:EspacioComun[];
  public responsables:EncargadoEvento[];
  searchText = '';
  
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
      // this.getEspacios();
      // this.getResponsables();
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
      this._itemsService.get(this.id).subscribe(resp => this._item = resp);
    }

    saveItem(item:DetalleEvento):any
    {
      this._itemsService.update(item).subscribe(resp => {
        this.mensajeServ.success('Se han guardado los cambios!', 'Aviso!');
      });
    }


    addDays(date, days) {
      var result = new Date(date);
      result.setDate(result.getDate() + days);
      return result;
    }

  }
