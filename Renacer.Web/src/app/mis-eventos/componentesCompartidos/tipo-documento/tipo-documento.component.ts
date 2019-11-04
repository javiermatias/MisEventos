import { Component, OnInit,Input,OnChanges,Output,EventEmitter } from '@angular/core';
import {TipoDocumentoServices,TipoDocumento} from '../../../servicios/tipo-documento.service';

@Component({
  selector: 'az-tipo-documento',
  templateUrl: './tipo-documento.component.html',
  styleUrls: ['./tipo-documento.component.scss']
})
export class TipoDocumentoComponent implements OnInit {

 
  @Input() tipoDoc:TipoDocumento;
  @Output() seleccionTipoDoc = new EventEmitter<TipoDocumento>();
  public tipoDocAux:TipoDocumento;
  public tiposDocumentos_1 = new Array<TipoDocumento>();
  constructor(private _dbServices:TipoDocumentoServices) {
  }

  ngOnInit() {
    this.getTiposDoc();
  }

  ngOnChanges(){
    this.tipoDocAux = this.tipoDoc;
    for(var i = 0; i < this.tiposDocumentos_1.length;i++){
      var itemAux = this.tiposDocumentos_1[i];
      if(this.tipoDoc.id == itemAux.id){
        this.tiposDocumentos_1[i] = this.tipoDoc;
      }
    }
  }

  actualizarTipoDoc(){
    if (this.tipoDoc) {
      var tipoDocAux2 = new TipoDocumento();
      tipoDocAux2.id = this.tipoDoc.id;
      tipoDocAux2.nombre = this.tipoDoc.nombre;
      this.tipoDoc.id = this.tipoDocAux.id;
      this.tipoDoc.nombre = this.tipoDocAux.nombre;
    }
    this.seleccionTipoDoc.emit(this.tipoDocAux);

  }

  getTiposDoc(){
    this._dbServices.query({}).subscribe(items => {
      this.tiposDocumentos_1 = [];
      for(var i = 0; i < items.length;i++){
        var itemAux = new TipoDocumento();
        itemAux.id = items[i].id;
        itemAux.nombre = items[i].nombre;
        this.tiposDocumentos_1.push(itemAux);
      }
    });
  }

}
