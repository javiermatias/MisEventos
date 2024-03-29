import { Component, OnInit, AfterContentInit, OnChanges, Input } from '@angular/core';
import { MatriculaServices } from '../../servicios/matricula.service';
import { Matricula } from '../../modelos/matricula';
import { Router } from '@angular/router';

@Component({
  selector: 'az-matricula',
  templateUrl: './matricula.component.html'

})
export class MatriculaComponent implements OnInit {

  @Input() matriculas: Matricula[];
  searchText = '';
  constructor(private _matriculaService: MatriculaServices, private router: Router) { }

  ngOnInit() {
    this.getItems();
  }


  //Get All
  getItems() {

    this._matriculaService.query({}).subscribe(items => {
      this.matriculas = items;
    });


  }
  trackElement(index: number, element: any) {
    return element ? element.id : null;
  }

  nuevoItem() {
    this.router.navigate(['/pages/formulario-matricula/0']);
  }

  verItem(_item) {
    this.router.navigate(['/pages/formulario-matricula/' + _item.id]);
  }

}
