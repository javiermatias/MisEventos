import { Component, OnInit } from '@angular/core';

import { Socio, SocioMatriculaServices, SocioServices } from '../../../resources/socio.service';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'az-cobro-matricula',
  templateUrl: './cobro-matricula.component.html',
  styles:[]
})
export class CobroMatriculaComponent implements OnInit {

  socios:Socio[];
  constructor(private _socioService:SocioServices, private _matriculaService:SocioMatriculaServices,private  mensajeServ: ToastrService ) { }



  ngOnInit() {
    this.getItems();
  }

  getItems() {  
    this._socioService.query({'estado': "DebeMatricula" }, (items: Socio[]) => {
      this.socios= items;
    });
  }

  cobrar(_socio){
    this._matriculaService.save(_socio,(resp:any) => {
      //Callback
        this.mensajeServ.success('Se ha registrado el pago!', 'Aviso!');
        this.getItems();
        //this.volver();
   });


    
  }
}
