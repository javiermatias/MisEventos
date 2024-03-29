import { Component, OnInit, ViewEncapsulation } from '@angular/core';
import { EventoServices, Evento, InscripcionServices, Inscripcion } from '../../../servicios/evento.service';
import { Socio } from '../../../servicios/socio.service';
import { DatePipe } from '@angular/common';
import { ToastrService } from 'ngx-toastr';
import { Observable } from 'rxjs';
import { ActivatedRoute, Router } from '@angular/router';



@Component({
  selector: 'az-inscripcion',
  encapsulation: ViewEncapsulation.None,
  templateUrl: './inscripcion.component.html',
  providers: [DatePipe]
})
export class InscripcionComponent implements OnInit {
  //[attr.selected]="!i"
  fechaHoy = new Date();
  fecha: Date;
  eventos: Evento[];
  listaSocios: Socio[];
  public estadosEvento: string[] = ["Nuevo", "Cancelado", "Progreso", "Finalizado"];
  seleccionEstado: string;
  seleccionEvento: Evento; // evento Seleccionado
  evento: Evento; //evento que viene con las inscripciones
  listaInscripcion: Array<Inscripcion>;

  idEvento: number;
  mostrarGrilla = false;
  mostrarInscripcion = false;
  eliminaInscripcion: Inscripcion;
  searchText = '';

  constructor(private _itemsService: EventoServices, private inscripcionServ: InscripcionServices,
    private datePipe: DatePipe, private mensajeServ: ToastrService,
    private route: ActivatedRoute, private router: Router) {
    this.listaSocios = new Array<Socio>();
    this.listaInscripcion = new Array<Inscripcion>();

  }

  ngOnInit() {


    this.idEvento = Number(this.route.snapshot.params['id']);

    this.traerEvento(this.idEvento);

    this.fecha = new Date(this.fechaHoy.getFullYear() + "-" + (this.fechaHoy.getMonth() + 1) + "-" + this.fechaHoy.getDate());
    this.fecha.setDate(this.fecha.getDate());



  }

  traerEvento(idEvento: number) {

    this._itemsService.get(idEvento).subscribe(item => {
      this.seleccionEvento = item;
      this.traerInscripciones(idEvento);
      /* this.mostrarInscripcion = true;  
      this.mostrarGrilla = true; */
      //console.log(item);

    }
    );

  }

  traerInscripciones(idEvento: number) {

    this.inscripcionServ.query({ 'idEvento': idEvento }).subscribe(items => {
      if (items != null) {
        this.listaInscripcion = items;
      }
      this.mostrarInscripcion = true;
      // console.log(items);
      this.mostrarGrilla = true;
    }
    );

  }







  guardar() {

    this.generarInscripcion();

  }

  generarInscripcion() {
    //let inscripcion:Inscripcion;
    //this.evento.id;
    let bandera = true;

    this.listaSocios.forEach((socio) => {

      if (socio.estado == "DebeMatricula") {
        this.mensajeServ.error('El socio ' + socio.nombre + ' ' + socio.apellido + ' debe la matrícula', 'Aviso!');
        bandera = false;

      }

      this.listaInscripcion.forEach(inscripcion => {
        console.log()
        if (inscripcion.idSocio == socio.id) {
          this.mensajeServ.error('El socio ' + socio.nombre + ' ' + socio.apellido + ' ya esta inscripto', 'Aviso!');
          bandera = false;

        }

      });
    });

    if (this.listaInscripcion.length + this.listaSocios.length > this.seleccionEvento.cupoMaximo) {
      this.mensajeServ.error('Se supera el cupo máximo del evento.', 'Aviso!');
      bandera = false;
    }

    if (bandera) {


      this.listaSocios.forEach((socio, idx, array) => {

        let inscripcion = new Inscripcion(0);
        //inscripcion.evento=this.evento;
        inscripcion.socio = socio;
        inscripcion.idEvento = this.seleccionEvento.id;
        inscripcion.idSocio = socio.id;
        inscripcion.evento = this.seleccionEvento;
        // this.listaInscripcion.push(inscripcion);
        if (idx === array.length - 1) {
          this.guardarInscripcion(inscripcion, true);
        } else {
          this.guardarInscripcion(inscripcion, false);
        }


      });
      //setTimeout(() => console.log('espero'), 2000);
      // this.mostrarInscripcion=false;
      this.listaSocios.length = 0;
      this.mensajeServ.success('La inscripción se realizo correctamente!', 'Aviso!');
      //this.router.navigate(['/pages/evento/lista-inscripciones']);
    }

  }



  guardarInscripcion(inscripc: Inscripcion, lastItem: boolean) {
    this.inscripcionServ.save(inscripc).subscribe(resp => {
      if (lastItem) {
        this.traerInscripciones(this.seleccionEvento.id);
      }
    });
  }

  eliminarInscripcion(inscripcion: Inscripcion) {
    this.eliminaInscripcion = inscripcion;
    jQuery('#show-event-modal').modal('show');

  }
  eliminar() {
    jQuery('#show-event-modal').modal('hide');
    this.inscripcionServ.remove(this.eliminaInscripcion.id).subscribe(resp => {
      this.mensajeServ.info('Se dio de baja la inscripción', 'Aviso!');
      this.traerInscripciones(this.seleccionEvento.id);
    })

  }



  cancelar() {
    this.router.navigate(['/pages/evento/lista-inscripciones']);
  }
}
