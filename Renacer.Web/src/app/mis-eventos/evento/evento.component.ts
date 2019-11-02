import { Component, OnInit ,OnDestroy, Input} from '@angular/core';
import { ActivatedRoute,Router } from '@angular/router';
import {FormGroup} from '@angular/forms';
import {DatePipe} from '@angular/common' ;
import { ToastrService, ToastrConfig } from 'ngx-toastr';
import { EventoServices ,Evento,TipoEventoServices,TipoEvento,DetalleEvento,Inscripcion,InscripcionServices} from '../../servicios/evento.service';
import { EncargadoEvento,EncargadoEventoServices} from '../../servicios/encargado.service';
import { EspacioComun,EspacioServices} from '../../servicios/espacio.service';

@Component({
  selector: 'az-evento',
  templateUrl: './evento.component.html'
})
export class EventoComponent implements OnInit,OnDestroy  {

   _item = new Evento();
  evento:string;
  public tiposDeEventos:TipoEvento[];
  public espacios:EspacioComun[];
  public responsables:EncargadoEvento[];
  public horarios:any[] = new Array<any>();
  public horario:any = {'dia':'','horaDesde':'','horaHasta':''};
public searchText:string="";

  id: number;
  private sub: any;

  public diaSemanas:string[] = ["Lunes","Martes","Miercoles","Jueves","Viernes","Sabado","Domingo"];

  constructor(
    private _itemsService:EventoServices,
    private tipoEventoServ:TipoEventoServices,
    private responsableServ:EncargadoEventoServices,
    private inscripcionServ:InscripcionServices,
    private espacioServ:EspacioServices,
    private route: ActivatedRoute,
    private router:Router,
    private mensajeServ: ToastrService)
    {  }

    ngOnInit()
    {
      this.id = Number(this.route.snapshot.params['id']);
      console.log(this.id );
       this.verItem();
   /*    this.sub = this.route.params.subscribe(params => {
        this.id = params['id'];
        if(this.id == "nuevo") this.nuevoItem();
        else this.verItem();
      }); */
    }

    ngOnDestroy() {
      this.sub.unsubscribe();
    }

    onSubmit(myForm: FormGroup)
    {
      let newEvento = Object.assign({}, this._item);
      this.saveItem(newEvento)
    }

    verItem()
    {
      this._itemsService.get(this.id).subscribe(resp => {
        this._item = resp;
        this.espacioServ.get(this._item.idEspacio).subscribe(resp2 =>  this._item.espacio = resp2);
        this.responsableServ.get(this._item.idEncargado).subscribe(resp3 => {  this._item.responsable = resp3;});
        this.inscripcionServ.query({"idEvento":this._item.id}).subscribe(resp3 => {  this._item.listaInscripciones = resp3;   });
     
      });
    }
    nuevoItem()
    {
      this._item =  new Evento(0,"","");
      this._item.responsable = new EncargadoEvento(0);
      this._item.espacio = new EspacioComun(0);
      this._item.tipoEvento = new TipoEvento(0);
    }
    limpiarForm()
    {
      this.nuevoItem();
    }

    saveItem(item:Evento,callback?:any):any
    {
      if(item.id == 0)
      {
        item.listaDetalleEvento = this.armarDetalleEvento(item,this.horarios);
        item.listaInscripciones = this.armarInscripciones(item);
        
        this._itemsService.save(item).subscribe(resp => {
          item = resp;
          this.mensajeServ.success('Se ha creado un nuevo Evento!', 'Aviso!');
          this.router.navigate(['/pages/evento/',item.id]);
        });
      }
      else
      {
        this._itemsService.save(item).subscribe(resp => {
          this.mensajeServ.success('Se han guardado los cambios!', 'Aviso!');
          this.verItem();
        });
      }
    }


    agregarHorario(){
      this.horarios.push(
        Object.assign({}, this.horario)
      )
      this.horario = {'dia':'','horaDesde':'','horaHasta':''};
    }
  


    armarInscripciones(item:Evento):Array<Inscripcion>{
      let  listaInscripciones:Array<Inscripcion> = new Array();
      for(let indice = 0;indice< item.listaSocios.length;indice++){
                let inscripto = new Inscripcion(0)
                      inscripto.idEvento = item.id;
                      inscripto.idSocio = item.listaSocios[indice].id;

                      listaInscripciones.push(inscripto);
      }

      return listaInscripciones;
    }

    armarDetalleEvento(item:Evento,horarios:any[]):Array<DetalleEvento>{
      let  listaDetalleEvento:Array<DetalleEvento> = new Array();
      let diaFinal = new Date(item.fechaHasta);

      for(let index_horario = 0;index_horario< horarios.length;index_horario++){
        let horario = horarios[index_horario];
        let diaActual =  new Date(item.fechaDesde);
        let numeroDelDia = this.diaSemanas.indexOf(horario.dia)+1;

        // horario.horaDesde =  horario.horaDesde.split(":")[0] - 3
        // horario.horaHasta =  horario.horaHasta.split(":")[0] - 3

        while(diaActual < diaFinal){
          if(diaActual.getDay() == numeroDelDia){
            let detalle = new DetalleEvento(0);
            detalle.nombre = "";
            detalle.descripcion = "";
            detalle.responsable = item.responsable;
            detalle.espacio = item.espacio;
            detalle.fechaDesde =new Date(diaActual.getFullYear() + "-" + (diaActual.getMonth() + 1) + "-" + diaActual.getDate() + " " + horario.horaDesde);
            detalle.fechaHasta =new Date(diaActual.getFullYear() + "-" + (diaActual.getMonth() + 1) + "-" + diaActual.getDate() + " " + horario.horaHasta);

            detalle.fechaDesde.setHours(detalle.fechaDesde.getHours() - 3)
            detalle.fechaHasta.setHours(detalle.fechaHasta.getHours() - 3)

            listaDetalleEvento.push(detalle);
          }
          diaActual = this.addDays(diaActual,1);
        }
      }
      return listaDetalleEvento;
    }

    saveSocios(){
      this._item.listaInscripciones = this.armarInscripciones(this._item);
        // this.inscripcionServ.save();
    }

    obtenerProximoEvento(eventoAux:Evento){
       let proxEvento = null;
       let fechaActual = new Date()
      eventoAux.listaDetalleEvento.forEach(element => {

        let fechaEvento:any =  element.fechaDesde;
          if(fechaEvento > fechaActual.toISOString()){
                 if(proxEvento == null)proxEvento = element;
                 if(proxEvento.fechaDesde > element.fechaDesde ) proxEvento = element;
          }
      });
      return proxEvento;
    }

    estaEnCurso(eventoAux:Evento):boolean{
       let fechaActual = new Date()
       let fechaEventoDesde:any =  eventoAux.fechaDesde;
       let fechaEventoHasta:any =  eventoAux.fechaHasta;
         if(fechaEventoDesde < fechaActual.toISOString() && fechaEventoHasta > fechaActual.toISOString()){
               return true;
         }else{
           return false;
         }
    }
    estaFinalizado(eventoAux:Evento):boolean{
      let fechaActual = new Date()
      let fechaEventoHasta:any =  eventoAux.fechaHasta;
        if(fechaEventoHasta < fechaActual.toISOString())
          return true;
        else
          return false;  
   }

    obtenerDiasSiguientes(eventoAux:Evento):Number{
      let fechaActual = new Date()
      let fechaEventoDesde:any =  eventoAux.fechaDesde;

        var t2 = fechaActual.getTime();
        var t1 = new Date(fechaEventoDesde).getTime();
       return Math.round((t1-t2)/(24*3600*1000))
   }

   eliminarEvento(eventoAux:Evento){
     this._itemsService.remove({'id':eventoAux.id}).subscribe(resp =>{
      this.mensajeServ.info('Se ha dado de baja el evento', 'Aviso!');
      this.router.navigate(['/pages/evento/lista']);
     })
   }

    addDays(date, days) {
      var result = new Date(date);
      result.setDate(result.getDate() + days);
      return result;
    }

  }


