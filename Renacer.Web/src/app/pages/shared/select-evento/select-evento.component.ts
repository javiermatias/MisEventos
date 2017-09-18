import { Component, OnInit,Input,OnChanges } from '@angular/core';
import {EventoServices,Evento} from '../../../resources/evento.service';

@Component({
  selector: 'select-evento',
  templateUrl: './select-evento.component.html',
  styleUrls: ['./select-evento.component.scss']
})
export class SelectEventoComponent implements OnInit {

  // @Input() item:Evento;
  public item:Evento;
  public itemSelected:Evento;
  public fecha:Date= new Date();
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
    var filtro = {"fechaDesde":this.fecha,"fechaHasta":this.fecha};
    this._dbServices.query(filtro,(items) => {
      this.items = [];
      for(var i = 0; i < items.length;i++){
        var itemAux = new Evento(0,1,1,1,"","","");
        itemAux.id = items[i].id;
        itemAux.nombre = items[i].nombre;
        this.items.push(itemAux);
      }
      this.setItemSelected();
    });
  }

}
