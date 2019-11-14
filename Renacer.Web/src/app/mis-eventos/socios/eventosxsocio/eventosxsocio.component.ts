import { Component, OnInit } from '@angular/core';
import { InscripcionServices, Inscripcion } from '../../../servicios/evento.service';
import { Usuario, UserServices } from '../../../servicios/users.service';

@Component({
  selector: 'az-eventosxsocio',
  templateUrl: './eventosxsocio.component.html',
  styleUrls: ['./eventosxsocio.component.scss']
})
export class EventosxsocioComponent implements OnInit {
  listaInscripcion:Array<Inscripcion>;
  public usuario:Usuario;
  searchText = '';
  
  constructor(private inscripcionServ:InscripcionServices,private _usersService:UserServices,
    ) { }
 
  ngOnInit() {
    this.usuario = this._usersService.getCurrent();
    if(this.usuario !=null ){
      this.traerInscripciones();
    }
  }

  traerInscripciones(){
    
    this.inscripcionServ.query({'idSocio':this.usuario.idSocio}).subscribe(items => {
      this.listaInscripcion = items;
      console.log(this.listaInscripcion);  
      //this.mostrarGrilla=true;
      }
     );
    
}

/* verItem(_item) {
  this.router.navigate(['/pages/formulario-matricula/' + _item.id]);
} */

}
