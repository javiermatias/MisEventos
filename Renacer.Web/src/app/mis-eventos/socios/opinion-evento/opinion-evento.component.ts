import { Component, OnInit } from '@angular/core';
import { Rating } from '../../../modelos/ratingEvento';
import { RatingServices } from '../../../servicios/rating.service';
import { ActivatedRoute, Router } from '@angular/router';
import { ToastrService } from 'ngx-toastr';
import { UserServices, Usuario } from '../../../servicios/users.service';

@Component({
  selector: 'az-opinion-evento',
  templateUrl: './opinion-evento.component.html',
  styleUrls: ['./opinion-evento.component.scss']
})
export class OpinionEventoComponent implements OnInit {
  ratingEvento:number =0;
  ratingContenido:number =0;
  ratingEncargado:number =0;

  rating:Rating;

  idEvento:number;
  textoDescripcion:string="";
  public usuario:Usuario;
  constructor(private _ratingService: RatingServices,private route: ActivatedRoute, private router: Router,
    private mensajeServ: ToastrService,private _usersService:UserServices) {
      
    this.rating =  new Rating();
  }

  ngOnInit() {
    this.usuario = this._usersService.getCurrent();
    this.idEvento = Number(this.route.snapshot.params['id']);
  }
  //puntajeEvento($event)
  puntajeEvento(rating: number) {
    this.ratingEvento=Math.round(rating) ;
  }
  puntajeContenido(rating: number) {
    this.ratingContenido=Math.round(rating);
  }
  puntajeEncargado(rating: number) {
    this.ratingEncargado=Math.round(rating);
  }
  enviar() {
    this.rating.ratingEvento =this.ratingEvento;
    this.rating.ratingContenido =this.ratingContenido;
    this.rating.ratingEncargado =this.ratingEncargado;
    this.rating.textoDescripcion =this.textoDescripcion;
    this.rating.idEvento= this.idEvento;
    this.rating.idSocio=this.usuario.idSocio;

    this._ratingService.save(this.rating).subscribe(resp => {
          this.mensajeServ.success('La encuesta se registró satisfactoriamente!', 'Aviso!');
          this.volver();
    });

 
  }

  volver() {
    this.router.navigate(['/pages/eventos-socio']);

  }
}
