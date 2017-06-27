import { Pipe, PipeTransform } from '@angular/core';

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
