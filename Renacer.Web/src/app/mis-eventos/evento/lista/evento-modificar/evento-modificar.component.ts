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
    this._eventoService.remove({'id':eventoAux.id}).subscribe(resp =>{
     this.mensajeServ.info('Se ha dado de baja el evento', 'Aviso!');
     this.router.navigate(['/pages/evento/lista']);
    })
  }

  actualizarEvento(){

  }

  guardar(){}
  darBaja(){}
}
