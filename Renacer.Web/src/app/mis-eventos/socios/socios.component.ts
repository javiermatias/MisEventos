import { Component, OnInit, Input } from '@angular/core';
////import { Socio, SocioServices, Contacto, Domicilio } from '../../resources/socio.service';
import { FormGroup } from '@angular/forms';
import { DatePipe } from '@angular/common';
import { ToastrService, ToastrConfig } from 'ngx-toastr';
import { DomicilioComponent } from './domicilio/domicilio.component';
import { TipoDocumento } from '../../servicios/tipo-documento.service';
import { ActivatedRoute, Router } from '@angular/router';
import { PersonaServices, Persona, Contacto, Domicilio } from '../../servicios/persona.service';
import { Socio, SocioServices } from '../../servicios/socio.service';
import { sexo, estadoCivil } from '../../modelos/enums';

@Component({
  selector: 'az-socios',
  templateUrl: './socios.component.html'
})
export class SociosComponent implements OnInit {

  public _socio = new Socio(0, "", "", "");
  public _persona = new Persona(0, "", "", "");
  //@Input() socios = new Array<Socio>();
  @Input() personas = new Array<Persona>();

  public socios =new Array<Socio>();
  public showDetail: boolean = false;
  public searchText: string = "";

  public _sexo = sexo; //traido de un enum

  public _estadoCivil=estadoCivil;

  //detaFactura = DetalleFActura
  constructor(
    //private _socioService: SocioServices,
    private _personaService: PersonaServices,
    private _socioService: SocioServices
    , private mensajeServ: ToastrService
    , private route: ActivatedRoute
    , private router: Router
    , private datePipe: DatePipe) {
    this.getItems();
  }

  onSubmit(myForm: FormGroup) {
    /* this.saveItem(newSocio)
    let newSocio = Object.assign({}, this._persona);
    this._persona = new Persona(0, "", "", "", "", "", "", "", "", undefined, "", undefined, undefined, undefined); */
    console.log(this._socio);
    //myForm.reset();
  }
  ngOnInit() {
    this.getItems();
    //this.mensajeServ.success('Estas viendo tus Socios!', 'Mensaje!');
  }
  getItems() {
     this._socioService.query(
      { 'search':this.searchText},
      (items:Socio[]) => {
        console.log(items);
      this.socios = items;
    }); 
/*     this._personaService.query(
      { 'rol': "Socio" },
      (items: Persona[]) => {
        this.personas = items;
      }); */



  }
  verItem(item: Persona) {
    //his._persona = item;
    //this.showDetail = true;
    this._personaService.get({ "id": item.id }, (resp: Persona) => {
      this._persona = resp;
      //this._persona.fechaNacimiento.format("mm/dd/yy", "AR");
      /*       var mifecha;
            var mifecha2;
            console.log(this._persona.fechaNacimiento);
            mifecha = this.datePipe.transform(this._persona.fechaNacimiento, 'yyyy-MM-dd');
            mifecha2 = this.datePipe.transform(this._persona.fechaNacimiento, 'dd/MM/yyyy');
            this._persona.fechaNacimiento = this.datePipe.transform(this._persona.fechaNacimiento, 'dd/MM/yyyy');
            console.log(mifecha);
            console.log(mifecha2);
            console.log(this._persona.fechaNacimiento); */
      this.showDetail = true;
    });
  }

  eliminarItem(item: Persona) {
    this._personaService.remove({ 'id': item.id }, resp => {
      this.mensajeServ.info('Se ha dado de baja el socio', 'Aviso!');
      this.router.navigate(['/pages/socios']);
    })
  }

  nuevoItem() {
    this._socio = new Socio(0, "", "", "");
/*     this._persona.domicilio = new Domicilio();
    this._persona.contacto = new Contacto(); */
    this.showDetail = true;
  }

  actualizarFecha(fecha: string) {
    console.log(fecha);
    let newDate = new Date(fecha);
    //console.log(newDate);
    this._persona.fechaNacimiento = newDate;

  }
  limpiarForm() {
    // this._persona = new Persona(0, "", "", "");
      this._socio = new Socio(0, "", "", "");
    this.showDetail = false;
  }
  saveItem(item: Socio): any {
    //Guarde en SOcio y persona. En persona va generar el usuario y el ROL
    if (item.id == 0) {
      this._socioService.save(item, (resp: Socio) => {
        item = resp;
        this.socios.push(item);
        this.showDetail = false;
        this.mensajeServ.success('se han guardado los cambios!', 'Aviso!');
      });
    } else {
      //Solamente la tabla Socio
  /*     this._personaService.update(item, (resp: Persona) => {
        let items = this.personas;
        for (var i = 0; i < items.length; i++) {
          if (items[i].id == resp.id) {
            items[i] = resp;
            this.mensajeServ.success('se han guardado los cambios!', 'Aviso!');
          }
        }
        this.showDetail = false;
      }); */
    }
  }
}
