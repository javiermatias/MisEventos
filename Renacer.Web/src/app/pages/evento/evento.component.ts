import { Component, OnInit , Input} from '@angular/core';
import {FormGroup} from '@angular/forms';
import {DatePipe} from '@angular/common' ;
import { ToastrService, ToastrConfig } from 'ngx-toastr';
import { TipoDocumentoComponent } from '../tipo-documento/tipo-documento.component';
import { TipoDocumento } from '../../resources/tipo-documento.service';
import { EventoServices ,Evento} from '../../resources/evento.service';
import { EncargadoEvento} from '../../resources/encargado.service';
import { EspacioComun} from '../../resources/espacio.service';

//import { CommonModule } from '@angular/common';
//import { FormsModule } from '@angular/forms';
//import { RouterModule } from '@angular/router';
import { CalendarComponent } from './calendar.component';
//import { DirectivesModule } from '../../theme/directives/directives.module';


@Component({
  selector: 'az-evento',
  templateUrl: './evento.component.html',
  styleUrls: ['./evento.component.scss']
})
export class EventoComponent implements OnInit {

  public _item = new Evento(0,0,0,0,"","","");
  @Input() items = new Array<Evento>();
  public showDetail:boolean = false;

  constructor(private _itemsService:EventoServices,private mensajeServ: ToastrService)
  {
  }

  ngOnInit()
  {
    this.getItems();
  }

  getItems()
  {
    this._itemsService.query({},(items:Evento[]) => {
      this.items = items;
    });
  }

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
    this._item.responsable = new EncargadoEvento(0);
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
        this.items.push(item);
        this.showDetail = false;
        this.mensajeServ.success('Se han guardado los cambios!', 'Aviso!');
      });
    }
    else
    {
      this._itemsService.update(item,(resp:Evento) => {
        let items = this.items;
        for (var i = 0; i < items.length; i++)
        {
          if(items[i].id == resp.id)
          { items[i] = resp;
            this.mensajeServ.success('Se han guardado los cambios!', 'Aviso!');
          }
        }
        this.showDetail = false;
      });
    }
  }

}
