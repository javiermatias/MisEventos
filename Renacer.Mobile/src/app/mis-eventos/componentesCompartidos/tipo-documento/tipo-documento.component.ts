import { Component, OnInit, Input, OnChanges, Output, EventEmitter } from '@angular/core';
import { TipoDocumentoServices, TipoDocumento } from '../../../servicios/tipo-documento.service';

@Component({
  selector: 'az-tipo-documento',
  templateUrl: './tipo-documento.component.html',
  styleUrls: ['./tipo-documento.component.scss']
})
export class TipoDocumentoComponent
        implements OnInit, OnChanges {

  @Input() tipoDoc: TipoDocumento;
  @Output() seleccionTipoDoc = new EventEmitter<TipoDocumento>();
  public tipoDocAux: TipoDocumento;
  public items = new Array<TipoDocumento>();
  item: any;
  constructor(private _dbServices: TipoDocumentoServices) {
  }

  ngOnInit() {
    this.getTiposDoc();
  }

  ngOnChanges() {
    this.tipoDocAux = this.tipoDoc;
    for (let i = 0; i < this.items.length; i++) {
      const itemAux = this.items[i];
      if (this.tipoDoc.id === itemAux.id) {
        this.items[i] = this.tipoDoc;
      }
    }
  }

  actualizarTipoDoc() {
    if (this.tipoDoc) {
      const tipoDocAux2 = new TipoDocumento();
      tipoDocAux2.id = this.tipoDoc.id;
      tipoDocAux2.nombre = this.tipoDoc.nombre;
      this.tipoDoc.id = this.tipoDocAux.id;
      this.tipoDoc.nombre = this.tipoDocAux.nombre;
    }
    this.seleccionTipoDoc.emit(this.tipoDocAux);

  }

  getTiposDoc() {
    this._dbServices.query({}).subscribe(items => {
      this.items = [];
      for (let i = 0; i < items.length; i++) {
        const itemAux = new TipoDocumento();
        itemAux.id = items[i].id;
        itemAux.nombre = items[i].nombre;
        this.items.push(itemAux);
      }
    });
  }

}
