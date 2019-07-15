import { Component, OnInit } from '@angular/core';
import { MatriculaxsocioService } from '../../../resources/matriculaxsocio.service';
import { MatriculaXsocio } from '../../../models/matricula-xsocio';

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
   
    this._matriculaService.query({}, (items: MatriculaXsocio[]) => {
      console.log(items);
      this.matriculas = items;
    })
  }


}
