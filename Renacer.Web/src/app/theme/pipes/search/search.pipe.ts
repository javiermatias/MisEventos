import { Pipe, PipeTransform } from '@angular/core';
//import { Matricula } from '../../../models/matricula';

@Pipe({ name: 'SearchPipe' })
export class SearchPipe implements PipeTransform {
  transform(value, args?): Array<any> {
    let searchText = new RegExp(args, 'ig');
    if (value) {
      return value.filter(person => {
        if (person.nombre && searchText) {
          return person.nombre.search(searchText) !== -1;
        }else{
          return true
        }
      });
    }
  }
}

@Pipe({ name: 'buscarMatriculaPipe' })
export class buscarMatriculaPipe implements PipeTransform {
  transform(value, args?): Array<any> {
    let searchText = new RegExp(args, 'ig');
    if (value) {
      return value.filter(Matricula => {
        if (Matricula.anio && searchText) {
          return Matricula.anio.search(searchText) !== -1;
        }else{
          return true
        }
      });
    }
  }
}
