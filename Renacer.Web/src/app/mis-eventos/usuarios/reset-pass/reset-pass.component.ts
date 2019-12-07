import { Component, OnInit } from '@angular/core';
import { UsuarioClaveServices, Usuario } from '../../../servicios/users.service';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'az-reset-pass',
  templateUrl: './reset-pass.component.html',
  styleUrls: ['./reset-pass.component.scss']
})
export class ResetPassComponent implements OnInit {

  usuarios:Usuario[];
  usuariosOriginal:Usuario[];

  public searchText = '';
  constructor(private _userService:UsuarioClaveServices, private mensajeServ: ToastrService) { }

  ngOnInit() {

    this.getItems();

  }

  getItems() {
    this._userService.query(
     {}).subscribe(items => {     
       this.usuarios=items;
       this.usuariosOriginal=items;  
      console.log(this.usuariosOriginal);
   }); 

 }

 buscar(){
  this.usuarios=this.usuariosOriginal;
  if(this.searchText != ''){
    this.searchText = this.searchText.toLowerCase();
    this.usuarios= this.usuarios.filter((item: Usuario) => {
      return item.nombre.toLowerCase().indexOf(this.searchText) >= 0 || 
      item.email.toLowerCase().indexOf(this.searchText) >= 0 ;
     });

  }

}

enviarEmail(item:Usuario){
  this._userService.save(item).subscribe(resp => {
     
    this.mensajeServ.success('Se ha enviado un mail a : ' + item.email + ' para restaurar la contraseña', 'Aviso!');
     });
 
}



}
