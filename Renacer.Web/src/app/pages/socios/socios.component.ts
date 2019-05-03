import { Component, OnInit, Input } from '@angular/core';
////import { Socio, SocioServices, Contacto, Domicilio } from '../../resources/socio.service';
import { FormGroup } from '@angular/forms';
import { DatePipe } from '@angular/common';
import { ToastrService, ToastrConfig } from 'ngx-toastr';
import { DomicilioComponent } from '../domicilio/domicilio.component';
import { TipoDocumento } from '../../resources/tipo-documento.service';
import { ActivatedRoute, Router } from '@angular/router';
import { PersonaServices, Persona, Contacto, Domicilio } from '../../resources/persona.service';
import { validarMail } from '../utils/validaciones';
@Component({
  selector: 'az-socios',
  templateUrl: './socios.component.html',
  styleUrls: ['./socios.component.scss']
})
export class SociosComponent implements OnInit {

  //public _socio = new Socio(0, "", "", "");
  public _persona = new Persona(0, "", "", "");
  //@Input() socios = new Array<Socio>();
  @Input() personas = new Array<Persona>();
  public showDetail: boolean = false;
  public searchText: string = "";
  public mailCorrecto = true;
  constructor(
    //private _socioService: SocioServices,
    private _personaService: PersonaServices
    , private mensajeServ: ToastrService
    , private route: ActivatedRoute
    , private router: Router
    , private datePipe: DatePipe) {
    this.getItems();
  }

  onSubmit(myForm: FormGroup) {

    let newSocio = Object.assign({}, this._persona);
    this._persona = new Persona(0, "", "", "", "", "", "", "", "", undefined, "", undefined, undefined, undefined);
    this.saveItem(newSocio)
    myForm.reset();
  }
  ngOnInit() {
    this.getItems();
    //this.mensajeServ.success('Estas viendo tus Socios!', 'Mensaje!');
  }
  getItems() {
    /* this._socioService.query(
      {'limit':10,
      'page':1,
      'search':this.searchText},
      (items:Socio[]) => {
      this.socios = items;
    }); */
    this._personaService.query(
      { 'rol': "Socio" },
      (items: Persona[]) => {
        this.personas = items;
      });



  }
  verItem(item: Persona) {
    //his._persona = item;
    //this.showDetail = true;
    this._personaService.get({ "id": item.id }, (resp: Persona) => {
      this._persona = resp;
      if (!this._persona.domicilio) {
        this._persona.domicilio = new Domicilio();
      }
      if (!this._persona.contacto) {
        this._persona.contacto = new Contacto();
      }
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
    this._persona = new Persona(0, "", "", "");
    this._persona.domicilio = new Domicilio();
    this._persona.contacto = new Contacto();
    this.showDetail = true;
  }

  actualizarFecha(fecha: string) {
    console.log(fecha);
    let newDate = new Date(fecha);
    //console.log(newDate);
    this._persona.fechaNacimiento = newDate;

  }
  limpiarForm() {
    this._persona = new Persona(0, "", "", "");
    this.showDetail = false;
  }
  saveItem(item: Persona): any {
    if (item.id == 0) {
      this._personaService.save(item, (resp: Persona) => {
        item = resp;
        this.personas.push(item);
        this.showDetail = false;
        this.mensajeServ.success('se han guardado los cambios!', 'Aviso!');
      });
    } else {
      this._personaService.update(item, (resp: Persona) => {
        let items = this.personas;
        for (var i = 0; i < items.length; i++) {
          if (items[i].id == resp.id) {
            items[i] = resp;
            this.mensajeServ.success('se han guardado los cambios!', 'Aviso!');
          }
        }
        this.showDetail = false;
      });
    }
  }

  public validarMail() {
    this.mailCorrecto = validarMail(this._persona.email);
  }
}
