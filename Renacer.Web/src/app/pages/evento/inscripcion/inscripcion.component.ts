import { Component, OnInit, ViewEncapsulation } from '@angular/core';
import { EventoServices, Evento, InscripcionServices, Inscripcion } from '../../../resources/evento.service';
import { Socio } from '../../../resources/socio.service';
import { DatePipe } from '@angular/common';
import { ToastrService } from 'ngx-toastr';
import { Observable } from 'rxjs';



@Component({
  selector: 'az-inscripcion',
    encapsulation: ViewEncapsulation.None,
  templateUrl: './inscripcion.component.html',
  styleUrls: ['./inscripcion.component.scss'],
  providers: [DatePipe]
})
export class InscripcionComponent implements OnInit {
  //[attr.selected]="!i"
  fechaHoy = new Date();
  fecha:Date;
  eventos:Evento[];
  listaSocios:Socio[];
  public estadosEvento:string[] = ["Nuevo","Cancelado","Progreso","Finalizado"];
  seleccionEstado:string;
  seleccionEvento:Evento; // evento Seleccionado
  evento:Evento; //evento que viene con las inscripciones
  listaInscripcion:Array<Inscripcion>;
  mostrarGrilla=false;
  mostrarInscripcion=false;
  eliminaInscripcion:Inscripcion;
  //Nuevo,Cancelado,Progreso,Finalizado
  //Filter
  
  //
  constructor( private _itemsService:EventoServices, private inscripcionServ:InscripcionServices, 
    private datePipe: DatePipe, private mensajeServ: ToastrService) { 
    this.listaSocios=new Array<Socio>();
   this.listaInscripcion= new Array<Inscripcion>();
  
  }

  ngOnInit() {
    
    this.fecha =new Date(this.fechaHoy.getFullYear() + "-" + (this.fechaHoy.getMonth() + 1) + "-" + this.fechaHoy.getDate());
    this.fecha.setDate( this.fecha.getDate());

  }

  traerEventos(estado:string){
    
      this._itemsService.query({'estado':estado},(items:Evento[]) => {
        this.eventos = items;
        
        }
       );
      
  }

  traerInscripciones(idEvento:number){
    
    this.inscripcionServ.query({'idEvento':idEvento},(items:Inscripcion[]) => {
      this.listaInscripcion = items;    
      this.mostrarGrilla=true;
      
      }
     );
    
}


  cambioEstado(){
    this.traerEventos(this.seleccionEstado);
   
  }

  cambioEvento(){
    this.traerInscripciones(this.seleccionEvento.id);
    /* console.log(this.seleccionEvento.fechaHastaInscripcion.toString());
    console.log(this.fecha.toISOString()); */
    if(this.seleccionEvento.fechaHastaInscripcion.toString() >= this.datePipe.transform(this.fecha,'yyyy-MM-dd')){
      this.mostrarInscripcion = true;
    } else{
      this.mostrarInscripcion = false;
    }
     
    this.listaSocios=new Array<Socio>();

  }


  guardar(){

    this.generarInscripcion();

  }

  generarInscripcion(){
    //let inscripcion:Inscripcion;
    //this.evento.id;
    let bandera = true;
    
    this.listaSocios.forEach((socio) => {
      
      this.listaInscripcion.forEach(inscripcion => {
        console.log()
        if(inscripcion.idSocio==socio.id){
          this.mensajeServ.error('El socio ' + socio.nombre + ' ' + socio.apellido + ' ya esta inscripto' , 'Aviso!');
          bandera=false;
          
        }
      });
    });

      if(bandera){


      this.listaSocios.forEach((socio) => {     
    
        let inscripcion = new Inscripcion(0);
        //inscripcion.evento=this.evento;
        inscripcion.socio=socio;
        inscripcion.idEvento= this.seleccionEvento.id;
        inscripcion.idSocio= socio.id;
        inscripcion.evento=null;
        //this.listaInscripcion.push(inscripcion);
        this.guardarInscripcion(inscripcion);
        
    });
    //setTimeout(() => console.log('espero'), 2000);
    this.mostrarInscripcion=false;
    this.mensajeServ.success('se han guardado los cambios!', 'Aviso!');
    
  }


  //this.evento.listaInscripciones = this.listaInscripcion;
  //this.listaInscripcion=new Array<Inscripcion>();
  //this.listaSocios=new Array<Socio>();

  }

 

  guardarInscripcion(inscripc:Inscripcion){
    
    this.inscripcionServ.save(inscripc, (resp: any) => {
      //console.log('guardado'+inscripc.idEvento);
      this.traerInscripciones(this.seleccionEvento.id);
       });
       
      
  }

  eliminarInscripcion(inscripcion: Inscripcion){
    this.eliminaInscripcion = inscripcion;
    jQuery('#show-event-modal').modal('show');
    
  }
  eliminar(){
//onsole.log("se elimino");
jQuery('#show-event-modal').modal('hide');
this.inscripcionServ.remove({'id':this.eliminaInscripcion.id},resp =>{
  this.mensajeServ.info('Se dio de baja la inscripción', 'Aviso!');
  this.traerInscripciones(this.seleccionEvento.id);
 })

  }

}
