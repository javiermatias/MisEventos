import { Component, OnInit, Input } from '@angular/core';
////import { Socio, SocioServices, Contacto, Domicilio } from '../../resources/socio.service';
import { FormGroup } from '@angular/forms';
import { DatePipe } from '@angular/common';
import { ToastrService, ToastrConfig } from 'ngx-toastr';
import { TipoDocumento } from '../../servicios/tipo-documento.service';
import { ActivatedRoute, Router } from '@angular/router';
import { PersonaServices, Persona } from '../../servicios/persona.service';
import { Secretario, SecretarioServices } from '../../servicios/secretario.service';
import { sexo, estadoCivil } from '../../modelos/enums';

@Component({
  selector: 'az-secretarios',
  templateUrl: './secretarios.component.html'
})
export class SecretariosComponent implements OnInit {

  public _secretario = new Secretario(0, "", "", "");
  public _persona = new Persona(0, "", "", "");
  @Input() personas = new Array<Persona>();

  public secretarios =new Array<Secretario>();
  public showDetail: boolean = false;
  public searchText = '';

  public _sexo = sexo; //traido de un enum
  public _estadoCivil=estadoCivil;

  constructor(

    private _secretarioService: SecretarioServices
    , private mensajeServ: ToastrService
    , private route: ActivatedRoute
    , private router: Router
    , private datePipe: DatePipe) {
    this.getItems();
  }

  onSubmit(myForm: FormGroup) {
      this.saveItem(this._secretario);
    
    myForm.reset();
  }
  ngOnInit() {
    this.getItems();
    //this.mensajeServ.success('Estas viendo tus Secretarios!', 'Mensaje!');
  }
  getItems() {
     this._secretarioService.query(
      { 'search':this.searchText}).subscribe
      (items => {
        console.log(items);
      this.secretarios = items;
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
    this._secretarioService.get(item.id).subscribe(resp => {
      this._secretario = resp;
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
    this._secretarioService.remove(item.id ).subscribe(resp => {
      this.mensajeServ.info('Se ha dado de baja el secretario', 'Aviso!');
      this.router.navigate(['/pages/secretarios']);
    })
  }

  nuevoItem() {
    this._secretario = new Secretario(0, "", "", "");
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
      this._secretario = new Secretario(0, "", "", "");
    this.showDetail = false;
  }
  saveItem(item: Secretario): any {
    //Guarde en Secretario y persona. En persona va generar el usuario y el ROL
    if (item.id == 0) {
      this._secretarioService.save(item).subscribe(resp => {
        item = resp;
        this.secretarios.push(item);
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
