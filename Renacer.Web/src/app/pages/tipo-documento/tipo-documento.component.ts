import { Component, OnInit,Input,OnChanges,Output,EventEmitter } from '@angular/core';
import {TipoDocumentoServices,TipoDocumento} from '../../resources/tipo-documento.service';

@Component({
  selector: 'az-tipo-documento',
  templateUrl: './tipo-documento.component.html',
  styleUrls: ['./tipo-documento.component.scss']
})
export class TipoDocumentoComponent implements OnInit {

  @Input() tipoDoc:TipoDocumento;
  private tipoDocAux:TipoDocumento;

  public tiposDocumentos_1 = new Array<TipoDocumento>();
  constructor(private _dbServices:TipoDocumentoServices) {
   }

  ngOnInit() {
    this.getTiposDoc();
  }

  ngOnChanges(){
    if(this.tipoDoc != null &&  this.tipoDocAux == null){
      // for (var i = 0; i < this.tiposDocumentos_1.length; i++) {
      //    if(this.tiposDocumentos_1[i].id == this.tipoDocAux.id){
      //      this.tiposDocumentos_1[i] = this.tipoDocAux;
      //    }
      // }

    this.tipoDocAux = new TipoDocumento();
    this.tipoDocAux.id = this.tipoDoc.id;
    this.tipoDocAux.nombre = this.tipoDoc.nombre;
   }
  }

  actualizarTipoDoc(){
    if(this.tipoDoc != null){
    this.tipoDoc.id = this.tipoDocAux.id;
    this.tipoDoc.nombre = this.tipoDocAux.nombre;
   }
  }

  getTiposDoc(){
    this._dbServices.query({},(items:TipoDocumento[]) => {
      this.tiposDocumentos_1 = items;
    });
  }

}
