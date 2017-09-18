import { Component, OnInit,Input,OnChanges,Output,EventEmitter } from '@angular/core';
import {EventoServices,Evento} from '../../../resources/evento.service';

@Component({
  selector: 'az-select-evento',
  templateUrl: './select-evento.component.html',
  styleUrls: ['./select-evento.component.scss']
})
export class SelectEventoComponent implements OnInit {

    @Input() evento:Evento;
    public itemAux2:Evento;
    public eventoAux = new Array<Evento>();
    constructor(private _dbServices:EventoServices) {
    }

    ngOnInit() {
      this.getItems();
    }

    ngOnChanges(){
      this.itemAux2 = this.evento;
      for(var i = 0; i < this.eventoAux.length;i++){
        var itemAux = this.eventoAux[i];
        if(this.evento.id == itemAux.id){
          this.eventoAux[i] = this.evento;
        }
      }
    }

    actualizarItem(){
      var itemAux22 = new Evento();
      itemAux22.id = this.evento.id;
      itemAux22.nombre = this.evento.nombre;

      this.evento.id = this.itemAux2.id;
      this.evento.nombre = this.itemAux2.nombre;
    }

    getItems(){
      this._dbServices.query({},(items) => {
        this.eventoAux = [];
        for(var i = 0; i < items.length;i++){
          var itemAux = new Evento();
          itemAux.id = items[i].id;
          itemAux.nombre = items[i].nombre;
          this.eventoAux.push(itemAux);
        }
      });
    }
  }
