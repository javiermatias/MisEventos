import { Component, OnInit, Input } from '@angular/core';
import {Socio,SocioServices} from '../../resources/socio.service';
import {FormGroup} from '@angular/forms';
import {DatePipe} from '@angular/common' ;
import { ToastrService, ToastrConfig } from 'ngx-toastr';
// import { DynamicTablesComponent } from '../tables/dynamic-tables/dynamic-tables.component';

@Component({
  selector: 'az-socios',
  templateUrl: './socios.component.html',
  styleUrls: ['./socios.component.scss']
})
export class SociosComponent implements OnInit {

  public _socio = new Socio(0,"","","");
  @Input() socios = new Array<Socio>();
  public showDetail:boolean = false;

  constructor(private _socioService:SocioServices,private mensajeServ: ToastrService) { }

  onSubmit(myForm: FormGroup) {
    let newSocio = Object.assign({}, this._socio);
    this._socio = new Socio(0,"","","");
    this.saveItem(newSocio)
    myForm.reset();
  }

  ngOnInit() {
    this.getItems();
    this.mensajeServ.success('Estas viendo tus Socios!', 'Mensaje!');
  }

  getItems(){
    this._socioService.query({},(items:Socio[]) => {
      this.socios = items;
    });
  }

  verItem(item:Socio){
    this._socio = Object.assign({}, item);
    this.showDetail = true;
  }
  nuevoItem(){
    this._socio =  new Socio(0,"","","");
    this.showDetail = true;
  }
  limpiarForm(){
    this._socio =  new Socio(0,"","","");
    this.showDetail = false;
  }

  saveItem(item:Socio):any{
    if(item.id == 0){
      this._socioService.save(item,(resp:Socio) => {
        item = resp;
        this.socios.push(item);
        this.showDetail = false;
        this.mensajeServ.success('se han guardado los cambios!', 'Aviso!');
      });
    }else{
      this._socioService.update(item,(resp:Socio) => {
        let items = this.socios;
        for (var i = 0; i < items.length; i++) {
          if(items[i].id == resp.id)
          { items[i] = resp;
            this.mensajeServ.success('se han guardado los cambios!', 'Aviso!');
          }
        }
        this.showDetail = false;
      });
    }
  }

}
