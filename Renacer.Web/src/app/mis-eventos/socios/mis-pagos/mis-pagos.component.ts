import { Component, OnInit } from '@angular/core';
import { MatriculaxsocioService } from '../../../servicios/matriculaxsocio.service';
import { UserServices, Usuario } from '../../../servicios/users.service';
import { MatriculaXsocio } from '../../../modelos/matricula-xsocio';
import { InscripcionServices, Inscripcion, Evento } from '../../../servicios/evento.service';
import { Array } from 'core-js';


@Component({
  selector: 'az-mis-pagos',
  templateUrl: './mis-pagos.component.html',
  styleUrls: ['./mis-pagos.component.scss']
})
export class MisPagosComponent implements OnInit {

  usuario:Usuario;
  pagoMatricula:boolean;
  matriculaXsocio: MatriculaXsocio;

  eventos:Evento[];

  public idInscripcion:number;

  listaInscripcion:Array<Inscripcion>;

  inscripcion:Inscripcion;
  //mostrarGrilla=false;

  mostrarEventos= false;

  mostrarCuotas= false;
  constructor(private _matriculaService:MatriculaxsocioService,private _usersService:UserServices,
    private inscripcionServ:InscripcionServices) {
    
   }

  ngOnInit() {
    this.usuario = this._usersService.getCurrent();
     this.traerMatriculaSocio();
  }

  traerMatriculaSocio(){
    this._matriculaService.query({'idSocio': this.usuario.idSocio}).subscribe(item => {
      if(item !=null && item.length != 0){
        console.log(item);
        item.forEach(element => {
          this.matriculaXsocio=element ;
        });
        this.traerInscripciones();
        this.pagoMatricula=true;
      }else{
        console.log("pase por el else");
        this.pagoMatricula=false;
      }
    }
   );
  }

  traerInscripciones(){
    
    this.inscripcionServ.query({'idSocio':this.usuario.idSocio}).subscribe(items => {
      this.listaInscripcion = items.filter(x => x.evento.gratuito == false);
  
      this.mostrarEventos = true;
      //console.log(this.listaInscripcion);  
      
      
      }
     );
    
}




verCuotas(item:Inscripcion){

  this.inscripcion=  this.listaInscripcion.filter(x => x.id == item.id)[0];
  this.inscripcion.listaPagos=this.inscripcion.listaPagos.sort((a, b) => a.nombre.localeCompare(b.nombre))
  console.log(this.inscripcion);
  this.mostrarEventos= false;
  this.mostrarCuotas= true;

 }

 volver(){
  this.mostrarEventos= true;
  this.mostrarCuotas= false;

 }
}
