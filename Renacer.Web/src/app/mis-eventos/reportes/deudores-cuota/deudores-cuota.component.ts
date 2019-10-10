import { Component, OnInit } from '@angular/core';
import { EventoServices, Evento, InscripcionServices, Inscripcion } from '../../../servicios/evento.service';
import { Observable } from 'rxjs';

@Component({
  selector: 'az-deudores-cuota',
  templateUrl: './deudores-cuota.component.html'
})
export class DeudoresCuotaComponent implements OnInit {
  public eventos :Evento[];
  public evento :Evento;

  listaInscripcion:Array<Inscripcion>;
  public HEROES=[
    { id: 11, name: 'Dr Nice' },
    { id: 12, name: 'Narco' },
    { id: 13, name: 'Bombasto' },
    { id: 14, name: 'Celeritas' },
    { id: 15, name: 'Magneta' },
    { id: 16, name: 'RubberMan' },
    { id: 17, name: 'Dynama' },
    { id: 18, name: 'Dr IQ' },
    { id: 19, name: 'Magma' },
    { id: 20, name: 'Tornado' }
  ];
  
  public idEvento:number;
  constructor(private _itemsService:EventoServices,private inscripcionServ:InscripcionServices) { }

  ngOnInit() {
   this.getEventos();
  }

  getEventos(){

    
   this._itemsService.query({'search':' '}).subscribe(items => {
     
    this.eventos = items;
            
    });
    
  }

  eventoSeleccionado(){
    //console.log(this.idEvento);
    //this.evento =  this.eventos.find(x => x.id == this.idEvento);
    //console.log(this.evento);
    this.traerInscripciones(this.idEvento);
  }

  traerInscripciones(_idEvento:number){
    
    this.inscripcionServ.query({'idEvento':_idEvento}).subscribe(items => {
      this.listaInscripcion = items;    
      console.log(items);
      }
     );
    
}

}
