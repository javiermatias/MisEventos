import { Component, OnInit,Input,OnChanges,Output,EventEmitter } from '@angular/core';
import { DomSanitizer, SafeHtml } from "@angular/platform-browser";
import {SocioServices,Socio} from '../../../resources/socio.service';
import { NguiAutoCompleteModule  } from '@ngui/auto-complete';

@Component({
  selector: 'az-select-socio',
  templateUrl: './select-socio.component.html',
  styleUrls: ['./select-socio.component.scss']
})
export class SelectSocioComponent implements OnInit {

  @Input() listaSocios:Socio[];
  public socios = new Array<Socio>();
  public sociosIds = [];
  public selectedSocio:any;

  constructor(private _dbServices:SocioServices,private _sanitizer: DomSanitizer) {
  }

  ngOnInit() {
    this.getSocios();
  }

  ngOnChanges(){
    if(this.listaSocios == null){this.listaSocios = new Array<Socio>();}
    for(var i = 0; i < this.socios.length;i++){
      for(var j = 0; j < this.listaSocios.length;j++){
        if(this.socios[i].id == this.listaSocios[j].id){
          this.socios[i]["selected"] = true;
        }
      }
    }
  }

  socioSelected(socio){
    var socioItem:Socio;
  //  if(socio.constructor.name == "Socio"){
      socioItem = socio;
      this.actualizarSocios(socioItem);
  //  }
  }

  estaSeleccionado(item){
    var result = false;
    if(this.listaSocios == null){ return false;}
    for(var j = 0; j < this.listaSocios.length;j++){
      if(item.nombre == this.listaSocios[j].nombre){
        result = true;
      }
    }
    return result;
  }

  actualizarSocios(item){
    if(this.listaSocios == null){this.listaSocios = new Array<Socio>();}

    if(this.listaSocios.filter(function(item2){ return item2.id == item.id}).length==0) {
      this.listaSocios.push(item);
    }
    else{
      for(var j = 0; j < this.listaSocios.length;j++){
        if(item.id == this.listaSocios[j].id){
          this.listaSocios.splice(j,1);
        }
      }
    }
    this.selectedSocio = null;
  }

  getSocios(){
    this._dbServices.query(
      {'limit':10,
       'page':1,
       'search':this.selectedSocio?this.selectedSocio.nombre:""},(items) => {
      this.socios = [];
      for(var i = 0; i < items.length;i++){
        // itemAux.id = items[i].id;
        // itemAux.nombre = items[i].nombre;
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
}
