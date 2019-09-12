import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { EventoServices, Evento } from '../../../servicios/evento.service';

@Component({
  selector: 'az-evento-detalle',
  templateUrl: './evento-detalle.component.html'
})
export class EventoDetalleComponent implements OnInit {

  id:number= 0;
  evento:Evento;

  mostrar:boolean=false;
  constructor(private router: Router, private route: ActivatedRoute, private _eventoService:EventoServices) { }

  ngOnInit() {
    
    this.id = Number(this.route.snapshot.params['id']);
   
    if(this.id != 0){      
     this.getByID();
     console.log(this.id);
   
     } 
  }


  getByID(){
    
 /*  this._eventoService.get({ "id": this.id }, (resp: Evento) => {
      this.evento = resp;
      console.log(this.evento);
      this.mostrar=true;
     }); */
     this._eventoService.get(this.id).subscribe(resp => {
      this.evento = resp;
      console.log(this.evento);
      this.mostrar=true;
    });
  
}

}
