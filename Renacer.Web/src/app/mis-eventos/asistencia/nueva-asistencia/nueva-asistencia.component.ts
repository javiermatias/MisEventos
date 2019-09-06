import { Component, OnInit, Input, EventEmitter, Output, AfterViewInit } from '@angular/core';
import { Evento, DetalleEvento, InscripcionServices, Inscripcion } from '../../../servicios/evento.service';
import { Socio } from '../../../servicios/socio.service';
import { AsistenciaServices, Asistencia } from '../../../servicios/asistencia.service';
import { ToastrService } from 'ngx-toastr';
import { DatePipe } from '@angular/common';

@Component({
  selector: 'az-nueva-asistencia',
  templateUrl: './nueva-asistencia.component.html',
  providers: [DatePipe]
})
export class NuevaAsistenciaComponent implements OnInit, AfterViewInit {

  //@Input() evento: Evento;
  @Input() detalleEvento: DetalleEvento;

  @Output() guardoAsistencia= new EventEmitter<boolean>(); //Si es true guardo la asistencia
  public listaInscripcion:Inscripcion[];
  socios:Array<number> =[];
  asistencia:Asistencia;
  fechaHoy = new Date();

  sinAsistencia:boolean=false;
  

  constructor(private inscripcionServ:InscripcionServices,
     private _asistenciaServ:AsistenciaServices,
     private datePipe: DatePipe,
    private mensajeServ: ToastrService ) { 

      this.fechaHoy =new Date(this.fechaHoy.getFullYear() + "-" + (this.fechaHoy.getMonth() + 1) + "-" + this.fechaHoy.getDate());
    //console.log(this.fechaHoy);
    
      //this.fechaHoy.setDate( this.fechaHoy.getDate());
      
    }

  ngOnInit() {
    
    this.traerInscripciones(this.detalleEvento.idEvento);
    //this.verificarFechaAsistencia();
  }

  traerInscripciones(idEvento:number){
    
    this.inscripcionServ.query({'idEvento':idEvento}).subscribe(items => {
      this.listaInscripcion = items;
      //console.log(items);   
     // this.mostrarGrilla=true;
      
      }
     );
    
}

asistio(item:Socio){

  var index = this.socios.indexOf(item.id);
  if (index > -1) {
    this.socios.splice(index, 1);
  }else{
    this.socios.push(item.id)
  }

}
guardar(){
 

  this.socios.forEach((value) => {
   
    let asistencia = new Asistencia();
    asistencia.idSocio=value;
    asistencia.idDetalleEvento = this.detalleEvento.id;
    asistencia.idEncargado=this.detalleEvento.idEncargado;
    this._asistenciaServ.save(asistencia).subscribe(resp => {          
    });
    
})
this.mensajeServ.success('se han guardado los cambios!', 'Aviso!');
this.guardoAsistencia.emit(true);

}

volver(){
  this.guardoAsistencia.emit(false);
}

verificarFechaAsistencia(){
  if(this.detalleEvento.fechaDesde.toString() > this.datePipe.transform(this.fechaHoy,'yyyy-MM-dd')){
    this.mensajeServ.info('No se puede tomar asistencia en días posteriores a la fecha de dictado del curso!', 'Aviso!');
    this.sinAsistencia=false;
  } else{
    this.sinAsistencia=true;
  }
}
ngAfterViewInit() {
  setTimeout(() => {
    this.verificarFechaAsistencia();
  }, 0);
 
}

}
