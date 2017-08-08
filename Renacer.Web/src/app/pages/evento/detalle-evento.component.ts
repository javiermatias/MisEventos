import { Component, OnInit , Input} from '@angular/core';
import {FormGroup} from '@angular/forms';
import {DatePipe} from '@angular/common' ;
import { ToastrService, ToastrConfig } from 'ngx-toastr';
import { TipoDocumentoComponent } from '../tipo-documento/tipo-documento.component';
import { TipoDocumento } from '../../resources/tipo-documento.service';
import { EventoServices ,Evento} from '../../resources/evento.service';
import { EncargadoEvento} from '../../resources/encargado.service';
import { EspacioComun} from '../../resources/espacio.service';


@Component({
  selector: 'az-detalle-evento',
  templateUrl: './detalle-evento.component.html'
})
export class DetalleEventoComponent implements OnInit {

  @Input() _item = new Evento(0,0,0,0,"","","");
  public showDetail:boolean = false;

  constructor(private _itemsService:EventoServices,private mensajeServ: ToastrService)
  {
  }

  ngOnInit()
  {}

  onSubmit(myForm: FormGroup)
  {
    let newEspacio = Object.assign({}, this._item);
    this._item = new Evento(0,0,0,0,"","","");
    this.saveItem(newEspacio)
    myForm.reset();
  }

  verItem(item:Evento)
  {
    this._itemsService.get({"id":item.id},(resp:Evento) => {
      this._item = resp;
      this.showDetail = true;
    });
  }
  nuevoItem()
  {
    this._item =  new Evento(0,0,0,0,"","","");
    this._item.encargado = new EncargadoEvento(0);
    this._item.espacio = new EspacioComun(0);
    this.showDetail = true;
  }
  limpiarForm()
  {
    this.nuevoItem();
    this.showDetail = false;
  }

  saveItem(item:Evento):any
  {
    if(item.id == 0)
    {
      this._itemsService.save(item,(resp:Evento) => {
        item = resp;
        this.showDetail = false;
        this.mensajeServ.success('Se han guardado los cambios!', 'Aviso!');
      });
    }
    else
    {
      this._itemsService.update(item,(resp:Evento) => {
        this.mensajeServ.success('Se han guardado los cambios!', 'Aviso!');
        this.showDetail = false;
      });
    }
  }
}
