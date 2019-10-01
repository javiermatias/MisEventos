import { Component, OnInit } from '@angular/core';
import { Contrasenia } from '../../../modelos/contrasenia';
import { UserServices, Usuario } from '../../../servicios/users.service';
import { CambioContraseniaService } from '../../../servicios/cambioContrasenia';
import { ToastrService } from 'ngx-toastr';
import { Router } from '@angular/router';

@Component({
  selector: 'az-cambio-contrasenia',
  templateUrl: './cambio-contrasenia.component.html'
})
export class CambioContraseniaComponent implements OnInit {

  contrasenia = new Contrasenia();
 usuario:Usuario ;
  submitted = false;


  public password:string="";

  public passwordActual:string="";
public barLabel: string = "Nivel de Seguridad:";
public myColors = ['#DD2C00', '#FF6D00', '#FFD600', '#AEEA00', '#00C853'];
  constructor(private _usersService:UserServices,
    private _contraseniaService: CambioContraseniaService,
    private mensajeServ: ToastrService ,
     private router: Router) { }

  ngOnInit() {
   this.usuario = this._usersService.getCurrent();
   this.contrasenia.usuario = this.usuario.usuario;

  }

  onSubmit() { 
      this._contraseniaService.save(this.contrasenia).subscribe(resp => {         
           this.mensajeServ.success('Se han guardado los cambios!', 'Aviso!');
         
        },
        error => {
          this.mensajeServ.error('Hubo un error al cambiar la contraseña!', 'Aviso!');
        }); 
        
        this.submitted = true; 
      
      
      }

    cancelar(){
      this.router.navigate(['/pages/dashboard/']);
    }

}
