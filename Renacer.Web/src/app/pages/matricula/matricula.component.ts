import { Component, OnInit } from '@angular/core';
import { MatriculaServices } from '../../resources/matricula.service';
import { Matricula } from '../../models/matricula';

@Component({
  selector: 'az-matricula',
  templateUrl: './matricula.component.html'

})
export class MatriculaComponent implements OnInit {

  matriculas: Matricula[];
  constructor(private _matriculaService: MatriculaServices) { }

  ngOnInit() {
    this.getItems();
  }

  //Get All
  getItems() {
    this._matriculaService.query({}, (items: Matricula[]) => {
      this.matriculas = items;
    }
    );
  }


}
