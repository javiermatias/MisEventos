import { Component, OnInit } from '@angular/core';
import { MatriculaxsocioService } from '../../../servicios/matriculaxsocio.service';
import { MatriculaXsocio } from '../../../modelos/matricula-xsocio';

@Component({
  selector: 'az-matriculas-pagadas',
  templateUrl: './matriculas-pagadas.component.html',
  styleUrls: []
})
export class MatriculasPagadasComponent implements OnInit {
  matriculas: MatriculaXsocio[];

  constructor(private _matriculaService: MatriculaxsocioService) { }

  ngOnInit() {
    this.getItems();
  }

  getItems() {
   
    this._matriculaService.query({}).subscribe(items => {
      console.log(items);
      this.matriculas = items;
    })
  }


}
