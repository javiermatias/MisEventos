import { Component, OnInit } from '@angular/core';
import { Socio, SocioServices } from '../../../servicios/socio.service';
import { UserServices, Usuario } from '../../../servicios/users.service';
import { routes } from '../../../pages/charting/charting.module';
import { ToastrService } from 'ngx-toastr';
import { sexo, estadoCivil } from '../../../modelos/enums';

@Component({
  selector: 'az-mis-datos',
  templateUrl: './mis-datos.component.html',
  styleUrls: ['./mis-datos.component.scss']
})
export class MisDatosComponent implements OnInit {
  public _socio = new Socio(0, "", "", "");
  public usuario:Usuario;
  public _sexo = sexo; //traido de un enum
  public _estadoCivil=estadoCivil;

  public fecha:Date;

  constructor(private _usersService:UserServices, private _socioService: SocioServices
    , private mensajeServ: ToastrService  ) { }

  ngOnInit() {
    this.usuario = this._usersService.getCurrent();
    if(this.usuario !=null ){
      this.traerSocio(this.usuario.idSocio);
    }else{
      //si no encuentra al usuario que lo envie al login.
    }
  }


  traerSocio(item: Number) {
    this._socioService.get(item).subscribe(resp => {
      this._socio = resp;
      //console.log(this._socio );
      
    });
  }

  guardar(){
    
    //let newDate = new Date(this._socio.fechaNacimiento);
    this._socio.fechaNacimiento = this.fecha;
   // console.log(this._socio);
    this._socioService.update(this._socio).subscribe(resp => {
            this.mensajeServ.success('se han guardado los cambios!', 'Aviso!');
    }); 
}
actualizarFecha(fecha: string) {
  
  this.fecha = new Date(fecha);
  console.log(this.fecha);


}

  limpiarForm() {

  }

  onSubmit(form: any) {

  }
}
