import { Component, OnInit } from '@angular/core';
import { Usuario,UserServices } from '../../../resources/users.service';
import { ToastrService, ToastrConfig } from 'ngx-toastr';
import {FormGroup} from '@angular/forms';

@Component({
  selector: 'az-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.scss']
})
export class ProfileComponent implements OnInit {

  public _item:Usuario;

  constructor(private baseServ:UserServices,private mensajeServ: ToastrService) {
   }

  ngOnInit() {
    this._item =  this.baseServ.getCurrent();
     this.baseServ.actual((item:Usuario)=> this._item = item)
  }

  onSubmit(myForm: FormGroup) {
    let usuario = Object.assign({}, this._item);
    this.saveItem(usuario)
    myForm.reset();
  }

  saveItem(item:Usuario):any{
    if(item.id == 0){
      this.baseServ.save(item,(resp:Usuario) => {
        item = resp;
        this.mensajeServ.success('se han guardado los cambios!', 'Aviso!');
      });
    }else{
      this.baseServ.update(item,(resp:Usuario) => {
        this.mensajeServ.success('se han guardado los cambios!', 'Aviso!');
      });
    }
  }

}
