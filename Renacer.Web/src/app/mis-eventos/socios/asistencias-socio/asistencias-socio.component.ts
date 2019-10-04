import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Usuario, UserServices } from '../../../servicios/users.service';
import { AsistenciaSocioServices } from '../../../servicios/asistenciaSocio.service';
import { AsistenciaSocio } from '../../../modelos/asistencia-socio';
import { EventoServices, Evento } from '../../../servicios/evento.service';

@Component({
  selector: 'az-asistencias-socio',
  templateUrl: './asistencias-socio.component.html',
  styleUrls: ['./asistencias-socio.component.scss']
})
export class AsistenciasSocioComponent implements OnInit {
  public usuario:Usuario;
  idEvento:number;

  cantidadTomoAsistencia:number=0;

  cantidadAsistio:number=0;

  porcentajeAsistencia:number=0;
  listaAsistencias:AsistenciaSocio[] = [];
  evento:Evento = new Evento();

  constructor(private route: ActivatedRoute,private _usersService:UserServices,
    
    private _asistencias:AsistenciaSocioServices,private _eventoService:EventoServices) { }

  ngOnInit() {
    this.usuario = this._usersService.getCurrent();
    this.idEvento = Number(this.route.snapshot.params['id']);
    this.getEventoByID(this.idEvento);
    //this.getAsistencias(this.idEvento);
  }

  getEventoByID(_idEvento:number){
    
    this._eventoService.get(_idEvento).subscribe(resp => {
     this.evento = resp;
     this.getAsistencias(_idEvento); 
   });
  }

  getAsistencias(_idEvento:number){
    this._asistencias.query(
      {'idEvento':_idEvento,
      'idSocio':this.usuario.idSocio}).subscribe
      (items => {          
         
        this.listaAsistencias = items;
        for (var asistencia of this.listaAsistencias) {
          if(asistencia.tomoAsistencia){
             this.cantidadTomoAsistencia++;
          }
          if(asistencia.asistio){
            this.cantidadAsistio++;
         }
     
        }
        this.porcentajeAsistencia = (this.cantidadAsistio /this.cantidadTomoAsistencia) * 100;
       // console.log("asistencias tomadas" + this.cantidadTomoAsistencia);
      //console.log("asistio" +this.cantidadAsistio);

    });


  }

 


}
