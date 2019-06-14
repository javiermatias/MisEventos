import { Component, OnInit, ViewEncapsulation } from '@angular/core';
import { ValidationService } from './ValidationService';
import { FormGroup, FormBuilder, Validators, FormControl, ValidatorFn, AbstractControl } from '@angular/forms';
import { TipoEventoServices, TipoEvento, Evento, EventoServices } from '../../../resources/evento.service';
import { EspacioComun, EspacioServices } from '../../../resources/espacio.service';
import { _ } from 'core-js';
import { EncargadoEventoServices, EncargadoEvento } from '../../../resources/encargado.service';


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
  public details:any = {};
  public showConfirm:boolean;
  
  
  //atributos propios mios
  tiposEventos:TipoEvento[];
  tiposEspacios:EspacioComun[];
  encargados:EncargadoEvento[];
  public evento:Evento = new Evento(0,"","");
  mostrarSaldoCuota:boolean = false;
  valorCuota:number=0;

  constructor(private formBuilder: FormBuilder,
    private tipoEventoServ:TipoEventoServices ,private _eventoService:EventoServices,
    private tipoEspacioSer:EspacioServices, private encargadoServ:EncargadoEventoServices) {

    this.steps = [
      {name: 'Evento', icon: 'fa-home', active: false, valid: false, hasError:false },
      {name: 'Detalles', icon: 'fa-pencil-square-o', active: false, valid: false, hasError:false },
      {name: 'Fechas', icon: 'fa-calendar', active: true, valid: false, hasError:false },
      {name: 'Confirmación', icon: 'fa-check-square-o', active: false, valid: false, hasError:false }
    ]

    this.eventoForm = this.formBuilder.group({
        'nombre': ['', Validators.compose([Validators.required, Validators.minLength(3)])],
        'descripcion': ['', Validators.compose([Validators.required, Validators.minLength(10)])],
        'tipoEvento': ['', Validators.required],
        'tipoEspacio': ['', Validators.required]           
    });
   
    this.detalleForm = this.formBuilder.group({
        'encargado': ['', Validators.required]  ,
        'cupoMin': ['', Validators.compose([Validators.required, ValidationService.minValidador(2)])],
        'cupoMax': ['', Validators.required], 
        'costo':['', Validators.required],
        'monto': ['', Validators.compose([Validators.required, ValidationService.minValidador(1)])],
        'cuota': ['', Validators.compose([Validators.required, ValidationService.minValidador(1)])]
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


 /*    { validator: Validators.compose([
        MyValidatorClass.myCrossFieldValidator1, 
        MyValidatorClass.myCrossFieldValidator2
])} */







    this.fechaForm = this.formBuilder.group({
         'fechaDesde': ['', Validators.required],
         'fechaHasta': ['', Validators.required],
         'fechaDesdeInscripcion': ['', Validators.required],
         'fechaHastaInscripcion': ['', Validators.required],

        /*'cardnumber': ['', Validators.compose([Validators.required, ValidationService.numberValidator])],
        'cvc': ['', Validators.compose([Validators.required, ValidationService.numberValidator])],
        'expirymonth': ['', Validators.required],
        'expiryyear': ['', Validators.required] */
    }, { validator: ValidationService.fechasValidador('fechaDesde','fechaHasta')}); 



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
                        console.log("es valido");
                        return true;
                    }
                    else{
                        console.log("es invalido");
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
            }
        }   
    });

 /*    this.details.username = this.eventoForm.value.username;
    this.details.fullname = this.detalleForm.value.firstname + " " + this.detalleForm.value.lastname;
    this.details.gender = this.detalleForm.value.gender;
    this.details.email = this.detalleForm.value.email;
    this.details.phone = this.detalleForm.value.phone;
    this.details.country = this.detalleForm.value.country;
    this.details.zipcode = this.detalleForm.value.zipcode;
    this.details.address = this.detalleForm.value.address;
    this.details.cardtype = this.fechaForm.value.cardtype;
    this.details.cardnumber = this.fechaForm.value.cardnumber;  */ 
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
  

 





      //console.log("desde wizard:" + this.evento.espacio);
      //tipoEspacioSer
     // this.eventoForm.controls['listaTags'].setValue(this.evento.listaTags);
     
}


guardar(){
    //console.log(this.eventoForm.controls['tipoEvento'].value);
    //console.log(this.eventoForm.controls['listaTags'].value);
   /*  this.evento.nombre =this.eventoForm.value.nombre;
    this.evento.descripcion=this.eventoForm.value.descripcion;
    this.evento.idTipoEvento=this.eventoForm.value.tipoEvento;
    this.evento.idEspacio=this.eventoForm.value.tipoEspacio;
    console.log(this.eventoForm.value.tipoEspacio);
   // this.evento.listaTags= this.eventoForm.value.listaTags;
    //Aca valores harcodeados para que me funcione
   // this.evento.idEspacio = 1 ;
    this.evento.idEncargado = 1;
     console.log(this.evento); */
     console.log(this.detalleForm.controls['costo'].value)
     console.log(this.detalleForm.controls['monto'].value)
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

 
}
