import { Component, OnInit, Input } from '@angular/core';
////import { Socio, SocioServices, Contacto, Domicilio } from '../../resources/socio.service';
import { FormGroup } from '@angular/forms';
import { ToastrService} from 'ngx-toastr';
import {  Router } from '@angular/router';
import { Socio, SocioServices } from '../../servicios/socio.service';
import { sexo, estadoCivil } from '../../modelos/enums';
import { CsvServices, RequestCsv } from '../../servicios/csv.service';
import {formatDate} from '@angular/common';
import localeEs from '@angular/common/locales/es';
import { registerLocaleData } from '@angular/common';


@Component({
  selector: 'az-socios',
  templateUrl: './socios.component.html'
})
export class SociosComponent implements OnInit {

  public _socio = new Socio(0, '', '', '');
  public socios = new Array<Socio>();

  public sociosOriginal = new Array<Socio>();
  public showDetail = false;
  public searchText = '';

  public _sexo = sexo; // traido de un enum

  public _estadoCivil= estadoCivil; // traido de un enum

  public fecha: Date;

  constructor(


    private _socioService: SocioServices
    , private mensajeServ: ToastrService
    , private router: Router) {
    this.getItems();
  }

  onSubmit(myForm: FormGroup) {
    let newSocio = Object.assign({}, this._socio);
    console.log(newSocio);
    this.saveItem(newSocio)
  }
  ngOnInit() {
    this.getItems();
    registerLocaleData(localeEs, 'es');

  }
  getItems() {
     this._socioService.query(
      { 'search':this.searchText}).subscribe
      (items => {       
      this.socios = items;
      this.sociosOriginal = items;
      this.showDetail = false;
    }); 

  }
  verItem(item: Socio) {
    this._socioService.get(item.id).subscribe(resp => {
      this._socio = resp;
      this.showDetail = true;
    });
  }

  eliminarItem(item: Socio) {
    this._socioService.remove(item.id).subscribe(resp => {
      this.mensajeServ.info('Se ha dado de baja el socio', 'Aviso!');
      this.router.navigate(['/pages/socios']);
    })
  }

  nuevoItem() {
    this._socio = new Socio(0, "", "", "");
    this.showDetail = true;
  }

  actualizarFecha(fecha: string) {
    this.fecha = new Date(fecha);
    console.log(this.fecha);

  }
  limpiarForm() {
      this._socio = new Socio(0, "", "", "");
    this.showDetail = false;
  }
  saveItem(item: Socio): any {
    item.fechaNacimiento = this.fecha;    
      this._socioService.save(item).subscribe(resp => {
     /*    if(item.id==0){
          this.socios.push(item);
        }
        item = resp;        */
        this.getItems();
     
        this.mensajeServ.success('Se han guardado los cambios!', 'Aviso!');
      });
  }

  getDateNow(){
    return   formatDate(new Date(), 'yyyy-MM-dd', 'es');
  }


  buscar(){
    this.socios=this.sociosOriginal;
    if(this.searchText != ''){
      this.searchText = this.searchText.toLowerCase();
      this.socios = this.socios.filter((item: Socio) => {
        return item.nombre.toLowerCase().indexOf(this.searchText) >= 0 || 
        item.apellido.toLowerCase().indexOf(this.searchText) >= 0 ;
       });

    }
  
  }

}
