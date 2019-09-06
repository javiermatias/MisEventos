import { Component, OnInit, EventEmitter, Output } from '@angular/core';
import { SocioServices, Socio } from '../../../../servicios/socio.service';
import { DomSanitizer } from '@angular/platform-browser';

@Component({
  selector: 'az-select-one-socio',
  templateUrl: './select-one-socio.component.html'
})
export class SelectOneSocioComponent implements OnInit {
  public listaSocios = new Array<Socio>();
  public socios = new Array<Socio>();
  public selectedSocio:any;
  @Output() emitSocio = new EventEmitter<Socio>();

  constructor( private _dbServices:SocioServices ,private _sanitizer: DomSanitizer) { }

  ngOnInit() {
    this.getSocios();
  }

  getSocios(){
    this._dbServices.query(
      {'limit':10,
       'page':1,
       'search':this.selectedSocio?this.selectedSocio.nombre:""}).subscribe(items => {
      this.socios = [];
      for(var i = 0; i < items.length;i++){
               this.socios.push(items[i]);
      }
    });
  }

  autocompleListFormatter = (data: any) => {
    let selected = this.listaSocios.filter((item)=> item.id == data.id).length == 1;
    let html = `<span>${data.nombre} ${data.apellido} - ${data.nroDocumento?data.nroDocumento:''}`;
    if(selected){
      html +=`<span class="fa fa-check" style='color:green;'></span>`
    }
    html +=`</span>`
    return this._sanitizer.bypassSecurityTrustHtml(html);
  }

  socioSelected(socio){
    this.emitSocio.emit(socio);

    //console.log(socio);
    //this.traerInscripciones(socio.id)
  }

}
