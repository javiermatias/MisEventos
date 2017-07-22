import { Component, OnInit,Input } from '@angular/core';
import {TipoDocumentoServices,TipoDocumento} from '../../resources/tipo-documento.service';

@Component({
  selector: 'tipo-documento',
  templateUrl: './tipo-documento.component.html',
  styleUrls: ['./tipo-documento.component.scss']
})
export class TipoDocumentoComponent implements OnInit {

  @Input() tipoDoc:TipoDocumento;
  @Input() nroDocumento:number;

  public tiposDocumentos = new Array<TipoDocumento>();
  constructor(private _dbServices:TipoDocumentoServices) {
   }

  ngOnInit() {
    this.getTiposDoc();
  }
  getTiposDoc(){
    this._dbServices.query({},(items:TipoDocumento[]) => {
      this.tiposDocumentos = items;
    });
  }

}
