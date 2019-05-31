import { Component, OnInit, AfterContentInit, OnChanges, Input } from '@angular/core';
import { MatriculaServices } from '../../resources/matricula.service';
import { Matricula } from '../../models/matricula';
import { Router }          from '@angular/router';

@Component({
  selector: 'az-matricula',
  templateUrl: './matricula.component.html'

})
export class MatriculaComponent implements OnInit {
  
  @Input() matriculas: Matricula[];
  constructor(private _matriculaService: MatriculaServices, private router: Router) { }

  ngOnInit() {
    this.getItems();
  }

  
  //Get All
  getItems() {
   
    this._matriculaService.query({}, (items: Matricula[]) => {
      this.matriculas = items;
    });

    
  }
  trackElement(index: number, element: any) {
    return element ? element.id : null;
  }

  nuevoItem(_id:string){

    this.router.navigate(['/pages/edit-matricula/0']);

  }

  verItem(_item){

   // console.log('id: '+ _item.id);
    this.router.navigate(['/pages/edit-matricula/' + _item.id]);

  }

}
