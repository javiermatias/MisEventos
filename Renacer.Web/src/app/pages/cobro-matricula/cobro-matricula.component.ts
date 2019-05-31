import { Component, OnInit } from '@angular/core';

import { Socio, SocioServices } from '../../resources/socio.service';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'az-cobro-matricula',
  templateUrl: './cobro-matricula.component.html',
  styles:[]
})
export class CobroMatriculaComponent implements OnInit {

  socios:Socio[];
  constructor(private _socioService:SocioServices, private mensajeServ: ToastrService ) { }

  ngOnInit() {
    this.getItems();
  }

  getItems() {  
    this._socioService.query({'estado': "DebeMatricula" }, (items: Socio[]) => {
      this.socios= items;
    });
  }

  cobrar(item){


    
  }
}
