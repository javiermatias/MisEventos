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

@Pipe({ name: 'buscarSocioMatricula' })
export class buscarSocioMatricula implements PipeTransform {
  transform(value, args?): Array<any> {
    let searchText = new RegExp(args, 'ig');
    if (value) {
      return value.filter(Socio => {
        if (Socio.nombre && searchText) {
       
          return Socio.nombre.search(searchText) !== -1 ;
       
                
        
        }else{
          return true
        }
      });
    }
  }
}

@Pipe({ name: 'buscarSocioMatriculaPagadas' })
export class buscarSocioMatriculaPagadas implements PipeTransform {
  transform(value, args?): Array<any> {
    let searchText = new RegExp(args, 'ig');
    if (value) {
      return value.filter(item => {
        if (item.socio.nombre && searchText) {
       
          return item.socio.nombre.search(searchText) !== -1 ;
       
                
        
        }else{
          return true
        }
      });
    }
  }
}

@Pipe({ name: 'buscarEventoMisPagos' })
export class buscarEventoMisPagos implements PipeTransform {
  transform(value, args?): Array<any> {
    let searchText = new RegExp(args, 'ig');
    if (value) {
      return value.filter(item => {
        if (item.evento.nombre && searchText) {
       
          return item.evento.nombre.search(searchText) !== -1 ;
       
                
        
        }else{
          return true
        }
      });
    }
  }
}



//item.evento.nombre
/* @Pipe({ name: 'buscarSocioMatricula' })
export class buscarSocioMatricula implements PipeTransform {
  transform(value, args?): Array<any> {
    let searchText = new RegExp(args, 'ig');
    if(value){
      return value.filter(Socio => {
        if (Socio.nombre && searchText) {
        if(Socio.nombre.search(searchText) !== -1){
          return Socio.nombre.search(searchText);
        }
      /*   }else if (Socio.apellido.search(searchText) !== -1){
          return Socio.apellido.search(searchText);
        }else(Socio.nroDocumento.search(searchText) !== -1)   
          return Socio.nroDocumento.search(searchText); */
                      
        
/*         }else{
          return true
        }
      });
    }
  }
} */
 