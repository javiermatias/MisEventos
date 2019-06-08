import { Component, OnInit, ViewEncapsulation } from '@angular/core';
import { ValidationService } from './ValidationService';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { TipoEventoServices, TipoEvento, Evento, EventoServices } from '../../../resources/evento.service';

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
  public personalForm:FormGroup;
  public paymentForm:FormGroup;
  public details:any = {};
  public showConfirm:boolean;
  
  //atributos propios mios
  tiposEventos:TipoEvento[];
  public evento:Evento = new Evento();

  constructor(private formBuilder: FormBuilder,
    private tipoEventoServ:TipoEventoServices ,private _eventoService:EventoServices,) {

    this.steps = [
      {name: 'Evento', icon: 'fa-home', active: true, valid: false, hasError:false },
      {name: 'Detalles del evento', icon: 'fa-pencil-square-o', active: false, valid: false, hasError:false },
      {name: 'Fechas', icon: 'fa-calendar', active: false, valid: false, hasError:false },
      {name: 'Confirmación', icon: 'fa-check-square-o', active: false, valid: false, hasError:false }
    ]

    this.eventoForm = this.formBuilder.group({
        'nombre': ['', Validators.compose([Validators.required, Validators.minLength(3)])],
        'descripcion': ['', Validators.compose([Validators.required, Validators.minLength(10)])],
        'tipoEvento': ['', Validators.required],
        'listaTags': ['']           
    });
   

    this.personalForm = this.formBuilder.group({
        'salutation': [''],
        'firstname': ['', Validators.required],
        'lastname': ['', Validators.required],
        'gender': [''],
        'email': ['', Validators.compose([Validators.required, ValidationService.emailValidator])],
        'phone': ['', Validators.required],
        'zipcode': ['', Validators.required],
        'country': ['', Validators.required],
        'state' : [''],
        'address' : ['']
    });

    this.paymentForm = this.formBuilder.group({
        'cardtype': ['', Validators.required],
        'cardnumber': ['', Validators.compose([Validators.required, ValidationService.numberValidator])],
        'cvc': ['', Validators.compose([Validators.required, ValidationService.numberValidator])],
        'expirymonth': ['', Validators.required],
        'expiryyear': ['', Validators.required]
    });  



   }


   public next(){
    let eventoForm = this.eventoForm;
    let personalForm = this.personalForm;
    let paymentForm = this.paymentForm;

    if(this.steps[this.steps.length-1].active)
        return false;
        
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
                if(step.name=='Detalles del evento'){
                    if (personalForm.valid) {
                        step.active = false;
                        step.valid = true;
                        steps[index+1].active=true;
                        return true;
                    }
                    else{
                        step.hasError = true;
                    }                      
                }
                if(step.name=='Fechas'){
                    if (paymentForm.valid) {
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
    this.details.fullname = this.personalForm.value.firstname + " " + this.personalForm.value.lastname;
    this.details.gender = this.personalForm.value.gender;
    this.details.email = this.personalForm.value.email;
    this.details.phone = this.personalForm.value.phone;
    this.details.country = this.personalForm.value.country;
    this.details.zipcode = this.personalForm.value.zipcode;
    this.details.address = this.personalForm.value.address;
    this.details.cardtype = this.paymentForm.value.cardtype;
    this.details.cardnumber = this.paymentForm.value.cardnumber;  */ 
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
    this.tipoEventoServ.query({}, (items: TipoEvento[]) => {
        this.tiposEventos = items;
      });
      this.eventoForm.controls['listaTags'].setValue(this.evento.listaTags);
}

guardar(){
    //console.log(this.eventoForm.controls['tipoEvento'].value);
    //console.log(this.eventoForm.controls['listaTags'].value);
    this.evento.nombre =this.eventoForm.value.nombre;
    this.evento.descripcion=this.eventoForm.value.descripcion;
    this.evento.idTipoEvento=this.eventoForm.value.tipoEvento;
    this.evento.listaTags= this.eventoForm.value.listaTags;
    //Aca valores harcodeados para que me funcione
    this.evento.idEspacio = 1 ;
    this.evento.idEncargado = 1;
     console.log(this.evento);
    this._eventoService.save(this.evento,(resp:any) => {
        console.log("Se guardo el elemento");
        //item = resp;
        //this.mensajeServ.success('Se ha creado un nuevo Evento!', 'Aviso!');
        //this.router.navigate(['/pages/evento/',item.id]);
      });

}

 
}
