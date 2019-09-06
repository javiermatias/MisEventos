import { Component, OnInit } from '@angular/core';
import { Contrasenia } from '../../../modelos/contrasenia';
import { UserServices, Usuario } from '../../../servicios/users.service';

@Component({
  selector: 'az-cambio-contrasenia',
  templateUrl: './cambio-contrasenia.component.html'
})
export class CambioContraseniaComponent implements OnInit {

  contrasenia = new Contrasenia();
 usuario:Usuario ;
  submitted = false;

  onSubmit() { 
    
    
    this.submitted = true; 
  
  
  }
  public password:string="";

  public passwordActual:string="";
public barLabel: string = "Nivel de Seguridad:";
public myColors = ['#DD2C00', '#FF6D00', '#FFD600', '#AEEA00', '#00C853'];
  constructor(private _usersService:UserServices) { }

  ngOnInit() {
   this.usuario = this._usersService.getCurrent();
   this.contrasenia.usuario = this.usuario.usuario;

/*    console.log(this.usuario);
   console.log(this.usuario.usuario); */
  }

}
