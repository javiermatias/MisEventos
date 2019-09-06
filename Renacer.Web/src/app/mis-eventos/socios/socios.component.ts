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
    let newSocio = Object.assign({}, this._socio);
    this.saveItem(newSocio)
  }
  ngOnInit() {
    this.getItems();
    //this.mensajeServ.success('Estas viendo tus Socios!', 'Mensaje!');
  }
  getItems() {
     this._socioService.query(
      { 'search':this.searchText}).subscribe
      (items => {
        console.log(items);
      this.socios = items;
    }); 

  }
  verItem(item: Persona) {
    this._socioService.get(item.id).subscribe(resp => {
      this._socio = resp;
      this.showDetail = true;
    });
  }

  eliminarItem(item: Persona) {
    this._personaService.remove({ 'id': item.id }).subscribe(resp => {
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
      this._socio = new Socio(0, "", "", "");
    this.showDetail = false;
  }
  saveItem(item: Socio): any {
      this._socioService.save(item).subscribe(resp => {
        item = resp;
        this.socios.push(item);
        this.showDetail = false;
        this.mensajeServ.success('se han guardado los cambios!', 'Aviso!');
      });
  }
}
