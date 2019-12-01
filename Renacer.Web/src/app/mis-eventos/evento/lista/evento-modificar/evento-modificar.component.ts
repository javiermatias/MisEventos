import { Component, OnInit } from '@angular/core';
import { EventoServices, Evento } from '../../../../servicios/evento.service';
import { ActivatedRoute, Router } from '@angular/router';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'az-evento-modificar',
  templateUrl: './evento-modificar.component.html',
  styleUrls: ['./evento-modificar.component.scss']
})
export class EventoModificarComponent implements OnInit {

  idEvento:number;
  _item:Evento = new Evento();

  public fechaDesdeInscripcion: Date;
  public fechaHastaInscripcion: Date;
  constructor(private route: ActivatedRoute,private _eventoService:EventoServices,
  
    private router:Router,
    private mensajeServ: ToastrService) { }

  ngOnInit() {
    this.idEvento = Number(this.route.snapshot.params['id']);
    if(this.idEvento != null){
      console.log(this.idEvento);
      this.getEventoByID(this.idEvento);
    }
    
  }


  getEventoByID(_idEvento:number){
    
    this._eventoService.get(_idEvento).subscribe(resp => {
     this._item= resp;
     console.log( this._item);
   
   });
  }

  eliminarEvento(eventoAux:Evento){
/*     this._eventoService.remove({'id':eventoAux.id}).subscribe(resp =>{
     this.mensajeServ.info('Se ha dado de baja el evento', 'Aviso!');
     this.router.navigate(['/pages/evento/lista']);
    }) */
  }

  actualizarEvento(){

  }

  guardar( ){
    let evento = Object.assign({}, this._item);
    evento.responsable=null;
    evento.tipoEvento=null;
    evento.listaHorarios=null;
    evento.listaDetalleEvento=null;
    evento.listaCuotas=null;
    evento.listaInscripciones=null;
    evento.espacio=null; 
    evento.fechaDesdeInscripcion = this.fechaDesdeInscripcion;   
    evento.fechaHastaInscripcion= this.fechaHastaInscripcion;  
    
      this._eventoService.update(evento).subscribe(resp => {
        evento = resp;
        this.router.navigate(['/pages/evento/lista']);
        this.mensajeServ.success('Se han guardado los cambios!', 'Aviso!');
      });
  }

  darBaja(){
    this._eventoService.remove(this.idEvento).subscribe(resp => {
      //Callback
      //this.getItems();
      this.mensajeServ.info('Se ha dado de baja el evento', 'Aviso!');
      this.router.navigate(['/pages/evento/lista']);
      //this.volver();
    });
  }

  actualizarFechaDesde(fecha: string) {
    this.fechaDesdeInscripcion = new Date(fecha);
   // console.log(this.fecha);

  }

  actualizarFechaHasta(fecha: string) {
    this.fechaHastaInscripcion = new Date(fecha);
    //console.log(this.fecha);

  }

  limpiarForm(){
    this.router.navigate(['/pages/evento/lista']);
  }
}
