import { Component, OnInit,Input,OnChanges } from '@angular/core';
import {EncargadoEventoServices,EncargadoEvento} from '../../../servicios/encargado.service';


@Component({
  selector: 'select-encargado',
  template:`<div class="form-group">
    <label>Encargado de Evento
    </label>
    <select class="form-control" id="select_item" (change)="actualizarItem()"
    required #select_item="ngModel" name="select_item" [(ngModel)]="itemSelected">
    <option *ngFor="let item of items;trackBy:item?.id" [ngValue]="item">{{item.nombre}} {{item.apellido}}
    </option>
  </select>
  <div [hidden]="select_item.valid || select_item.pristine" class="alert alert-danger">
    Debe ingresar el Responsable
  </div>
  </div>
`
})
export class SelectEncargadoComponent implements OnInit, OnChanges {

  @Input() item:EncargadoEvento;
  public itemSelected:EncargadoEvento;
  public items = new Array<EncargadoEvento>();
  constructor(private _dbServices:EncargadoEventoServices) {
  }

  ngOnInit() {
    this.getItems();
  }
  ngOnChanges(){
    this.setItemSelected();
  }

  setItemSelected(){
    if(this.items.length > 0 && this.item != null){
      this.itemSelected = this.item;

      for(var i = 0; i < this.items.length;i++){
        if(this.item.id == this.items[i].id){
          this.item.nombre = this.items[i].nombre;
          this.item.apellido = this.items[i].apellido;
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
    this._dbServices.query({},(items) => {
      this.items = [];
      for(var i = 0; i < items.length;i++){
        var itemAux = new EncargadoEvento(0);
        itemAux.id = items[i].id;
        itemAux.nombre = items[i].nombre;
        itemAux.apellido = items[i].apellido;
        this.items.push(itemAux);
      }
      this.setItemSelected();
    });
  }

}
