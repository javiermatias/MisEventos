import { Component, OnInit, ViewEncapsulation } from '@angular/core';
import { ValidationService } from './ValidationService';
import { FormGroup, FormBuilder, Validators, FormControl, ValidatorFn, AbstractControl } from '@angular/forms';
import { TipoEventoServices, TipoEvento, Evento, EventoServices, Horario } from '../../../servicios/evento.service';
import { EspacioComun, EspacioServices } from '../../../servicios/espacio.service';
import { _ } from 'core-js';
import { EncargadoEventoServices, EncargadoEvento } from '../../../servicios/encargado.service';
import { ToastrService } from 'ngx-toastr';
import { DatePipe } from '@angular/common';


@Component({
  selector: 'az-evento-wizard',
  encapsulation: ViewEncapsulation.None,  
  templateUrl: './evento-wizard.component.html',
  styleUrls: ['./evento-wizard.component.scss'],
  providers: [ ValidationService ] 
})


export class EventoWizardComponent implements OnInit {

  public steps:any[];
  public eventoForm:FormGroup;
  public detalleForm:FormGroup;
  public fechaForm:FormGroup;
  public detalles:any = {}; //Confirmacion
  public showConfirm:boolean;
  
  
  //atributos propios mios
  tiposEventos:TipoEvento[];
  tiposEspacios:EspacioComun[];
  encargados:EncargadoEvento[];
  public evento:Evento = new Evento(0,"","");
  mostrarSaldoCuota:boolean = false;
  valorCuota:number=0;
  horarios:Horario[];
  contador:number =0;

  fechaHoy = new Date();
  //fecha:Date;

  public diaSemanas:string[] = ["Lunes","Martes","Miercoles","Jueves","Viernes","Sabado","Domingo"];

  constructor(private formBuilder: FormBuilder,
    private tipoEventoServ:TipoEventoServices ,private _eventoService:EventoServices,
    private tipoEspacioSer:EspacioServices, private encargadoServ:EncargadoEventoServices,
    private mensajeServ: ToastrService,
    private datePipe: DatePipe) {
    this.horarios= new Array<Horario>();

    this.steps = [
      {name: 'Evento', icon: 'fa-home', active: false, valid: false, hasError:false },
      {name: 'Detalles', icon: 'fa-pencil-square-o', active: false, valid: false, hasError:false },
      {name: 'Fechas', icon: 'fa-calendar', active: true, valid: false, hasError:false },
      {name: 'Detalles Confirmación', icon: 'fa-check-square-o', active: false, valid: false, hasError:false }
    ]

    this.eventoForm = this.formBuilder.group({
        'nombre': ['', Validators.compose([Validators.required, Validators.minLength(3)])],
        'descripcion': ['', Validators.compose([Validators.required, Validators.minLength(10)])],
        'tipoEvento': ['', Validators.required],
        'tipoEspacio': ['', Validators.required]           
    });
   
    this.detalleForm = this.formBuilder.group({
        'encargado': ['', Validators.required],
        'cupoMin': ['', Validators.compose([Validators.required, ValidationService.minValidador(2)])],
        'cupoMax': ['', Validators.required], 
        'costo':['', Validators.required],
        'monto': ['', Validators.compose([Validators.required, ValidationService.minValidador(1)])],
        'cuota': ['', Validators.compose([Validators.required, ValidationService.minValidador(1)])]  /*,
        'horaIncio': ['', Validators.required],
        'horaFin': ['', Validators.required] */
        /* ,
        'cupoMax': ['', Validators.compose([Validators.required, ValidationService.rangosValidador('cupoMin')])]  */
        /* ,
        'firstname': ['', Validators.required],
        'lastname': ['', Validators.required],
        'gender': [''],
        'email': ['', Validators.compose([Validators.required, ValidationService.emailValidator])],
        'phone': ['', Validators.required],
        'zipcode': ['', Validators.required],
        'country': ['', Validators.required],
        'state' : [''],
        'address' : [''] */
    }, { validator: ValidationService.rangosValidador('cupoMin','cupoMax') });










    this.fechaForm = this.formBuilder.group({
         'fechaDesde': ['', Validators.required],
         'fechaHasta': ['', Validators.required],
         'fechaDesdeInscripcion': ['', Validators.required],
         'fechaHastaInscripcion': ['', Validators.required],         
         'dia': ['Lunes', Validators.required],
         'horaInicio': ['', Validators.required],
         'horaFin': ['', Validators.required]
        /*'cardnumber': ['', Validators.compose([Validators.required, ValidationService.numberValidator])],
        'cvc': ['', Validators.compose([Validators.required, ValidationService.numberValidator])],
        'expirymonth': ['', Validators.required],
        'expiryyear': ['', Validators.required] */
    }, { validator: Validators.compose([
        ValidationService.fechasValidador('fechaDesde','fechaHasta'), 
        ValidationService.fechaMenorHoyValidador(this.datePipe.transform(this.fechaHoy,'yyyy-MM-dd'),'fechaDesde'),
        ValidationService.fechaMenorHoyValidador(this.datePipe.transform(this.fechaHoy,'yyyy-MM-dd'),'fechaHasta'),
         ValidationService.fechasValidador('fechaDesdeInscripcion','fechaHastaInscripcion')
])       }); 
 /*    { validator: Validators.compose([
        ValidationService.fechasValidador('fechaDesde','fechaHasta'), 
         ValidationService.fechasValidador('fechaDesdeInscripcion','fechaHastaInscripcion')
])}; */

   }


   public next(){
    let eventoForm = this.eventoForm;
    let detalleForm = this.detalleForm;
    let fechaForm = this.fechaForm;
//console.log("antes de preguntar por los activos");
    if(this.steps[this.steps.length-1].active)
        return false;
        //console.log("despues de preguntar por los activos");
    this.steps.some(function (step, index, steps) {
        if(index < steps.length-1){
            if(step.active){
                if(step.name=='Evento'){
                    if (eventoForm.valid) {
                        step.active = false;
                        step.valid = true;
                        steps[index+1].active=true;
                        return true;
                    }
                    else{
                        step.hasError = true;
                    }                      
                }
                if(step.name=='Detalles'){
                    
                    if (detalleForm.valid) {
                        step.active = false;
                        step.valid = true;
                        steps[index+1].active=true;
                        //console.log("es valido");
                        return true;
                    }
                    else{
                        //console.log("es invalido");
                        step.hasError = true;
                    }                      
                }
                if(step.name=='Fechas'){
                    if (fechaForm.valid) {
                        step.active = false;
                        step.valid = true;
                        steps[index+1].active=true;
                        return true;
                    }
                    else{
                        step.hasError = true;
                    }                      
                }

                if(step.name=='Detalles Confirmación'){
                    /* this.evento.nombre = this.eventoForm.value.nombre;
                    this.evento.descripcion = this.eventoForm.value.descripcion;
                    this.evento.tipoEvento=this.eventoForm.value.tipoEvento;
                    this.evento.idTipoEvento= this.eventoForm.value.tipoEvento.id;
                    this.evento.espacio=this.eventoForm.value.tipoEspacio;
                    this.evento.idEspacio = this.eventoForm.value.tipoEspacio.id;
                    this.evento.responsable = this.eventoForm.value.encargado;
                    this.evento.idEncargado=this.detalleForm.value.encargado.id;
                    this.evento.cupoMinimo=this.detalleForm.value.cupoMin;
                    this.evento.cupoMaximo=this.detalleForm.value.cupoMax;
                    this.evento.costo=this.detalleForm.value.costo;
                    this.evento.monto=this.detalleForm.value.monto;
                    this.evento.cantidadCuota=this.detalleForm.value.cuota;
                
                    this.evento.fechaDesde=this.fechaForm.value.fechaDesde;
                    this.evento.fechaHasta=this.fechaForm.value.fechaHasta;
                    this.evento.fechaDesdeInscripcion=this.fechaForm.value.fechaDesdeInscripcion;
                    this.evento.fechaHastaInscripcion=this.fechaForm.value.fechaHastaInscripcion;
                
                    this.evento.listaHorarios = this.horarios; */


                    return true;
                }
            }
        }   
    });

    console.log('log de eventoForm')
    console.log(this.eventoForm.value.nombre);
    console.log(this.eventoForm.value.descripcion);
    console.log(this.eventoForm.value.tipoEvento.id);
    console.log(this.eventoForm.value.tipoEspacio.id);
    console.log('log de detalleForm')
    console.log(this.detalleForm.value.encargado.id);
    console.log(this.detalleForm.value.cupoMin);
    console.log(this.detalleForm.value.cupoMax);
    console.log(this.detalleForm.value.costo);
    console.log(this.detalleForm.value.monto);
    console.log(this.detalleForm.value.cuota);
    console.log('log de fechasForm')
    console.log(this.fechaForm.value.fechaDesde);
    console.log(this.fechaForm.value.fechaHasta);
    console.log(this.fechaForm.value.fechaDesdeInscripcion);
    console.log(this.fechaForm.value.fechaHastaInscripcion);
    
    this.horarios.forEach(horario => {
        console.log(horario.dia);
        console.log(horario.horaDesde);
        console.log(horario.horaHasta);
    });

     this.evento.nombre = this.eventoForm.value.nombre;
    this.evento.descripcion = this.eventoForm.value.descripcion;
    this.evento.tipoEvento=this.eventoForm.value.tipoEvento;
    this.evento.idTipoEvento= this.eventoForm.value.tipoEvento.id;
    this.evento.espacio=this.eventoForm.value.tipoEspacio;
    this.evento.idEspacio = this.eventoForm.value.tipoEspacio.id;
    this.evento.responsable = this.detalleForm.value.encargado;
    this.evento.idEncargado=this.detalleForm.value.encargado.id;
    this.evento.cupoMinimo=this.detalleForm.value.cupoMin;
    this.evento.cupoMaximo=this.detalleForm.value.cupoMax;
    if(this.detalleForm.value.costo == "0"){
       this.evento.gratuito= true;
       console.log("vale 0");
    }else if(this.detalleForm.value.costo == "1") {
        console.log("vale 1");
       this.evento.gratuito=false;
    }
    //this.evento.costo=this.detalleForm.value.costo;
    this.evento.monto=this.detalleForm.value.monto;
    this.evento.cantidadCuota=this.detalleForm.value.cuota;

    this.evento.fechaDesde=this.fechaForm.value.fechaDesde;
    this.evento.fechaHasta=this.fechaForm.value.fechaHasta;
    this.evento.fechaDesdeInscripcion=this.fechaForm.value.fechaDesdeInscripcion;
    this.evento.fechaHastaInscripcion=this.fechaForm.value.fechaHastaInscripcion;

    this.evento.listaHorarios = this.horarios; 

    /* this.detalles.phone = this.detalleForm.value.phone;
    this.detalles.country = this.detalleForm.value.country;
    this.detalles.zipcode = this.detalleForm.value.zipcode;
    this.detalles.address = this.detalleForm.value.address;
    this.detalles.cardtype = this.fechaForm.value.cardtype;
    this.detalles.cardnumber = this.fechaForm.value.cardnumber;  */  
}

public prev(){
  if(this.steps[0].active)
      return false;
  this.steps.some(function (step, index, steps) {
      if(index != 0){
          if(step.active){
              step.active = false;
              steps[index-1].active=true;
              return true;
          }
      }             
  });
}

public confirm(){
  this.steps.forEach(step => step.valid = true);
  this.evento.responsable=null;
  this.evento.espacio=null;
  this.evento.tipoEvento=null;
  this._eventoService.save(this.evento,(resp:Evento) => {
    //Callback
      this.mensajeServ.success('Se ha guardado el evento!', 'Aviso!');
      //this.volver();
 });
}


ngOnInit() {
    this.tipoEventoServ.query({}, (_items: TipoEvento[]) => {
        this.tiposEventos = _items;
      });
      
      this.tipoEspacioSer.query({}, (items: EspacioComun[]) => {
        this.tiposEspacios = items;
      });

      this.encargadoServ.query({}, (items: EncargadoEvento[]) => {
        this.encargados = items;
        console.log(this.encargados);
      });

    this.listenerCosto();
    this.listenerCuota();  
    this.listenerMonto();
    this.listenerEspacio();

    //this.eventoForm.controls['tipoEvento'].setValue(this.evento.tipoEvento);





      //console.log("desde wizard:" + this.evento.espacio);
      //tipoEspacioSer
     // this.eventoForm.controls['listaTags'].setValue(this.evento.listaTags);
     
}


guardar(){
    this.evento.espacio =this.eventoForm.value.tipoEspacio;
    this.evento.tipoEvento=this.eventoForm.value.tipoEvento;
    //console.log( this.eventoForm.controls['tipoEvento'].value.nombre);
    console.log('log de eventoForm')
    console.log(this.eventoForm.value.nombre);
    console.log(this.eventoForm.value.descripcion);
    console.log(this.eventoForm.value.tipoEvento.id);
    console.log(this.eventoForm.value.tipoEspacio.id);
    console.log('log de detalleForm')
    console.log(this.detalleForm.value.encargado.id);
    console.log(this.detalleForm.value.cupoMin);
    console.log(this.detalleForm.value.cupoMax);
    console.log(this.detalleForm.value.costo);
    console.log(this.detalleForm.value.monto);
    console.log(this.detalleForm.value.cuota);
    console.log('log de fechasForm')
    console.log(this.fechaForm.value.fechaDesde);
    console.log(this.fechaForm.value.fechaHasta);
    console.log(this.fechaForm.value.fechaDesdeInscripcion);
    console.log(this.fechaForm.value.fechaHastaInscripcion);
    
    this.horarios.forEach(horario => {
        console.log(horario.dia);
        console.log(horario.horaDesde);
        console.log(horario.horaHasta);
    });
 
    //console.log( JSON.stringify(this.evento.tipoEvento.nombre));
    //console.log(this.evento.tipoEvento.nombre);
    //console.log(this.eventoForm.controls['listaTags'].value);
   /*  this.evento.nombre =this.eventoForm.value.nombre;
    this.evento.descripcion=this.eventoForm.value.descripcion;
    this.evento.idTipoEvento=this.eventoForm.value.tipoEvento;
    this.evento.idEspacio=this.eventoForm.value.tipoEspacio;
    
   // this.evento.listaTags= this.eventoForm.value.listaTags;
    //Aca valores harcodeados para que me funcione
   // this.evento.idEspacio = 1 ;
    this.evento.idEncargado = 1;
     console.log(this.evento); */
     //console.log(this.detalleForm.controls['costo'].value)
    // console.log(this.detalleForm.controls['monto'].value)
  /*   this._eventoService.save(this.evento,(resp:any) => {
        console.log("Se guardo el elemento");
        //item = resp;
        //this.mensajeServ.success('Se ha creado un nuevo Evento!', 'Aviso!');
        //this.router.navigate(['/pages/evento/',item.id]);
      }); */

    }

listenerCosto(){
    //me suscribo al evento, para saber cuando cambia el costo y asi 
      //poder mostrar o no los otros datos
      this.detalleForm.get("costo").valueChanges.subscribe((costo) => {
        
        //console.log('cambiocosto');
        //console.log(costo);
        //this.detalleForm.get("monto").disable();
     
        if(costo == 1) {
            //console.log('habilite monto');
             this.detalleForm.get("monto").enable();
             this.detalleForm.get("cuota").enable();
        } else if (costo == 0) {
            //console.log('deshabilite monto');
            this.mostrarSaldoCuota = false;
             this.detalleForm.get("monto").disable();
             this.detalleForm.get("cuota").disable();
        }
    });
}

listenerCuota(){
    this.detalleForm.get("cuota").valueChanges.subscribe((cuota) => {
        
        //console.log('cambiocosto');
        //console.log(costo);
        //this.detalleForm.get("monto").disable();
     
        if(cuota > 0 && this.detalleForm.value.monto > 0) {
            //console.log('habilite monto');
        this.valorCuota =  (this.detalleForm.value.monto / cuota); 
        this.mostrarSaldoCuota = true;

        }else{
            this.mostrarSaldoCuota = false;
        }
    });
}

listenerMonto(){
    this.detalleForm.get("monto").valueChanges.subscribe((monto) => {
        
        //console.log('cambiocosto');
        //console.log(costo);
        //this.detalleForm.get("monto").disable();
     
        if(monto > 0 && this.detalleForm.value.cuota > 0) {
            //console.log('habilite monto');
        this.valorCuota =  (monto / this.detalleForm.value.cuota); 
        this.mostrarSaldoCuota = true;

        }else{
            this.mostrarSaldoCuota = false;
        }
    });
}


listenerEspacio(){
    this.eventoForm.get("tipoEspacio").valueChanges.subscribe((tipoEspacio) => {
        
        //console.log('cambiocosto');
        //console.log(costo);
        //this.detalleForm.get("monto").disable();
        console.log('Capacidad:' + tipoEspacio.capacidad);
        //console.log('Capacidad:' + this.eventoForm.value.tipoEspacio.capacidad);

       this.detalleForm.get("cupoMax").setValidators(ValidationService.maxValidador(tipoEspacio.capacidad));
     
   
    });



}


agregarHorario(){
    const horario = new Horario(this.contador);
    horario.dia=this.fechaForm.value.dia;
    horario.horaDesde=this.fechaForm.value.horaInicio;
    horario.horaHasta=this.fechaForm.value.horaFin;
    //horario.espacio = this.eventoForm.value.tipoEspacio.id;
    this.horarios.push(horario);

    //console.log('hola puchero');
    this.contador++;
}
 
}
