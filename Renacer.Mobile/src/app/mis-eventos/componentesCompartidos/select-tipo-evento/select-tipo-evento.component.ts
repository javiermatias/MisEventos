import { Component, OnInit,Input,OnChanges } from '@angular/core';
import {TipoEventoServices,TipoEvento} from '../../../servicios/evento.service';

@Component({
  selector: 'select-tipo-evento',
  templateUrl: './select-tipo-evento.component.html',
  styleUrls: ['./select-tipo-evento.component.scss']
})
export class SelectTipoEventoComponent implements OnInit {

  @Input() item:TipoEvento;
  public itemSelected:TipoEvento;
  public items = new Array<TipoEvento>();
  constructor(private _dbServices:TipoEventoServices) {
  }

  ngOnInit() {
    this.getItems();
  }

  ngOnChanges(){
    this.setItemSelected();
  }

  setItemSelected(){
    if(this.items.length != 0 && this.item != null){
      this.itemSelected = this.item;

      for(var i = 0; i < this.items.length;i++){
        if(this.item.id == this.items[i].id){
          this.item.nombre = this.items[i].nombre;
          this.items[i] = this.item;
          this.itemSelected = this.items[i];
        }
      }
    }
  }

  actualizarItem(){
    this.item.id = this.itemSelected.id;
    this.item.nombre = this.itemSelected.nombre;
  }

  getItems(){
    this._dbServices.query({}).subscribe(items => {
      this.items = [];
      for(var i = 0; i < items.length;i++){
        var itemAux = new TipoEvento(0);
        itemAux.id = items[i].id;
        itemAux.nombre = items[i].nombre;
        this.items.push(itemAux);
      }
      this.setItemSelected();
    });
  }

}
