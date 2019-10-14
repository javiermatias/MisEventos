import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { EventoServices, Evento, InscripcionServices, Inscripcion } from '../../../servicios/evento.service';
import { UserServices, Usuario } from '../../../servicios/users.service';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'az-evento-detalle',
  templateUrl: './evento-detalle.component.html'
})
export class EventoDetalleComponent implements OnInit {

  id:number= 0;
  evento:Evento;
  public usuario:Usuario;
  mostrar:boolean=false;
  esSocio:boolean=false;
  listaInscripcion:Array<Inscripcion>;
  inscripcionSocio:Inscripcion;
  constructor(private router: Router, private route: ActivatedRoute, private _eventoService:EventoServices,
    private _usersService:UserServices, private inscripcionServ:InscripcionServices,
    private mensajeServ: ToastrService) { }

  ngOnInit() {
    this.usuario = this._usersService.getCurrent();
    if(this.usuario.rol == 'SOCIO'){
    this.esSocio = true;
    }
    this.id = Number(this.route.snapshot.params['id']);
   
    if(this.id != 0){      
     this.getByID();
     this.traerInscripciones(); //Traigo las inscripciones para validar si ya se inscribio al curso
   
     } 

    
  }


  getByID(){
    
     this._eventoService.get(this.id).subscribe(resp => {
      this.evento = resp;
      console.log(this.evento);
      this.mostrar=true;
    });
  
}
traerInscripciones(){
    
  this.inscripcionServ.query({'idSocio':this.usuario.idSocio}).subscribe(items => {
    this.listaInscripcion = items;
    console.log(this.listaInscripcion);  
    //this.mostrarGrilla=true;
    }
   );
  
}
inscribirse(){

  let bandera = true;
  this.listaInscripcion.forEach(inscripcion => {
    
    if(inscripcion.idEvento == this.evento.id){      
      bandera=false;
      return;
    }
    
 });


  if(bandera){
    let inscripcion = new Inscripcion(0);
  
    inscripcion.idEvento= this.evento.id;
    inscripcion.idSocio= this.usuario.idSocio;
    //console.log(this.evento.id);
  
      this.inscripcionServ.save(inscripcion).subscribe(resp => {
        this.mensajeServ.success('Se ha inscripto correctamente al curso!', 'Aviso!');
         });
  }else{
    this.mensajeServ.error('Ya estas inscripto a este evento :' + this.evento.nombre, 'Aviso!');
  }

 
}

}
