import { Component, OnInit } from '@angular/core';
import { Usuario,UserServices } from '../../../servicios/users.service';
import { ToastrService, ToastrConfig } from 'ngx-toastr';
import {FormGroup} from '@angular/forms';

@Component({
  selector: 'az-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.scss']
})
export class ProfileComponent implements OnInit {

  public _item:Usuario;
  imagen:File;

  constructor(private baseServ:UserServices,private mensajeServ: ToastrService) {
   }

  ngOnInit() {
    this._item =  this.baseServ.getCurrent();
     this.baseServ.actual().subscribe(item => this._item = item)
  }

onFileSelected(event){
   this.imagen = <File> event.target.files[0];
}
 onUploadFile(){
  const r = new FileReader();
  const aux = this;

  r.onloadend = function (e) {
      var arr = Array.from(new Uint8Array(this.result));
      aux.baseServ.subirImagen("Name of Image",arr).subscribe(resp => {
        console.log(resp);
        aux._item.imagen = resp.imagen;
        aux.mensajeServ.success('se han guardado los cambios!', 'Aviso!');
      });
  }
  r.readAsArrayBuffer(this.imagen);
  
}



  onSubmit(myForm: FormGroup) {
    let usuario = Object.assign({}, this._item);
    this.saveItem(usuario)
    myForm.reset();
  }

  saveItem(item:Usuario):any{
    if(item.id == 0){
      this.baseServ.save(item).subscribe(resp => {
        item = resp;
        this.mensajeServ.success('se han guardado los cambios!', 'Aviso!');
      });
    }else{
      this.baseServ.save(item).subscribe(resp => {
        this.mensajeServ.success('se han guardado los cambios!', 'Aviso!');
      });
    }
  }

}
