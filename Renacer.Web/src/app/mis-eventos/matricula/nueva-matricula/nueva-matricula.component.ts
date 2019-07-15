import { Component, OnInit } from '@angular/core';
import { Matricula } from '../../../models/matricula';
import { ToastrService } from 'ngx-toastr';
import { MatriculaServices } from '../../../resources/matricula.service';
import { Router } from '@angular/router';
import { ActivatedRoute } from '@angular/router';
import { Observable } from 'rxjs';


@Component({
  selector: 'az-nueva-matricula',
  templateUrl: './nueva-matricula.component.html'
})
export class NuevaMatriculaComponent implements OnInit {

  matricula:Matricula;
  anioActual:string;
  id:number= 0;

  constructor(private _matriculaService:MatriculaServices, private mensajeServ: ToastrService,
    private router: Router, private route: ActivatedRoute) { }

  ngOnInit() {
    this.anioActual=new Date().getFullYear().toString();
    this.matricula = new Matricula();

    this.id = Number(this.route.snapshot.params['id']);
    if(this.id != 0){
      //console.log('si no es un nuevo elemento');
      this.getByID();
    
     }
  }

  onSubmit() {
    this.matricula.anio = new Date();
    //función asincrónica, puede tardar varios segundos   
    this._matriculaService.save(this.matricula,(resp:Matricula) => {
       //Callback
         this.mensajeServ.success('Se han guardado los cambios!', 'Aviso!');
         this.volver();
    });
    
  }

  volver(){
    this.router.navigate(['/pages/matricula']);
    
  }



  getByID(){
    this._matriculaService.get({ "id": this.id }, (resp: Matricula) => {
      this.matricula = resp;
      //console.log(this.matricula.fechaVencimiento);
     });
   
  
}

actualizarFecha(fecha: string) {
  console.log(fecha);
  let newDate = new Date(fecha);
   newDate.setDate(newDate.getDate() + 1 );
  console.log(newDate);
  this.matricula.fechaVencimiento = newDate;

}
    
    

     //return id;
/*      this.route.paramMap.subscribe( 
    params => console.log('Observer got a next value: ' + params.get("id")),
    err => console.error('Observer got an error: ' + err),
    () => console.log('Observer got a complete notification') 
  ); */

  }
  
   


