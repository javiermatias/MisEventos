import { Component, OnInit , Input,ChangeDetectorRef} from '@angular/core';
import {EspacioComun,EspacioServices} from '../../resources/espacio.service';
import {FormGroup} from '@angular/forms';
import {DatePipe} from '@angular/common' ;

@Component({
  selector: 'az-espacios',
  templateUrl: './espacios.component.html',
  styleUrls: ['./espacios.component.scss']
})
export class EspaciosComponent implements OnInit {

  public _espacio = new EspacioComun(0,"","",0,0,10);
  @Input() espacios = new Array<EspacioComun>();
  public showDetail:boolean = false;

  constructor(private _espacioService:EspacioServices,private ref: ChangeDetectorRef) {

  }

  ngOnInit() {
    this.getItems();
  }

  getItems(){
    this._espacioService.query({},(items:EspacioComun[]) => {
      this.espacios = items;
    }
  );
}

onSubmit(myForm: FormGroup) {
  let newEspacio = Object.assign({}, this._espacio);
  this._espacio = new EspacioComun(0,"","",0,0,10);
  // newEspacio.fechaCreacion = new Date();
  this.saveItem(newEspacio)
  myForm.reset();
}

verItem(item:EspacioComun){
  this._espacio = Object.assign({}, item);
  this.showDetail = true;
}
nuevoItem(){
  this._espacio =  new EspacioComun(0,"","",0,0,10);
  this.showDetail = true;
}

saveItem(item:EspacioComun):any{
  if(item.id == 0){
    this._espacioService.save(item,(resp:EspacioComun) => {
      item = resp;
      this.espacios.push(item);
      this.showDetail = false;
    });
  }else{
    this._espacioService.update(item,(resp:EspacioComun) => {
      let espacios = this.espacios;
      for (var i = 0; i < espacios.length; i++) {
        if(espacios[i].id == resp.id)
        { espacios[i] = resp;}
         this.ref.detectChanges();
      }
      this.showDetail = false;
    });
  }
}


}
