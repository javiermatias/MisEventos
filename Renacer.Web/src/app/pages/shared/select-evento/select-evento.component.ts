import { Component, OnInit,Input,OnChanges } from '@angular/core';
import {EventoServices,Evento} from '../../../resources/evento.service';

@Component({
  selector: 'select-evento',
  template:`<div class="form-group">
  <label>evento
  </label>
  <select class="form-control" id="select_item" (change)="actualizarItem()"
  required #select_item="ngModel" name="select_item" [(ngModel)]="itemSelected">
  <option *ngFor="let item of items;trackBy:item?.id" [ngValue]="item">{{item.nombre}}
  </option>
  </select>
  <div [hidden]="select_item.valid || select_item.pristine" class="alert alert-danger">
  Debe ingresar el Evento
  </div>
  </div>
  `
})
export class SelectEventoComponent implements OnInit {

  @Input() item:Evento;
  public itemSelected:Evento;
  public items = new Array<Evento>();
  constructor(private _dbServices:EventoServices) {
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
    this._dbServices.query({
      "search":""
    },(items) => {
      this.items = [];
      for(var i = 0; i < items.length;i++){
        var itemAux = new Evento(0);
        itemAux.id = items[i].id;
        itemAux.nombre = items[i].nombre;
        this.items.push(itemAux);
      }
      this.setItemSelected();
    });
  }

}
