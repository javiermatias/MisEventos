import { Component, OnInit } from '@angular/core';
import { Matricula } from '../../../modelos/matricula';
import { ToastrService } from 'ngx-toastr';
import { MatriculaServices } from '../../../servicios/matricula.service';
import { Router } from '@angular/router';
import { ActivatedRoute } from '@angular/router';
import { Observable } from 'rxjs';
import { DatePipe } from '@angular/common';


@Component({
  selector: 'az-nueva-matricula',
  templateUrl: './nueva-matricula.component.html'
})
export class NuevaMatriculaComponent implements OnInit {

  matricula:Matricula;
  anioActual:string;
  id:number= 0;
  matriculas: Matricula[];
  constructor(private _matriculaService:MatriculaServices, 
    private mensajeServ: ToastrService,
    private router: Router, private route: ActivatedRoute, private datePipe: DatePipe) { }

  ngOnInit() {
    this.anioActual=new Date().getFullYear().toString();
    this.matricula = new Matricula();
    this.getItems();

    /* this.id = Number(this.route.snapshot.params['id']);
    if(this.id != 0){
      //console.log('si no es un nuevo elemento');
      this.getByID();
    
     } */
  }

  onSubmit() {
    this.matricula.anio = new Date();

    for (let matricula of this.matriculas) {
      if(this.anioActual == this.datePipe.transform(matricula.anio,'yyyy')){
        this.mensajeServ.error('Ya existe la matrícula de este año', 'Aviso!');
        return;
      }
   }
  
    //función asincrónica, puede tardar varios segundos   
    this._matriculaService.save(this.matricula).subscribe(resp => {
       //Callback
         this.mensajeServ.success('Se han guardado los cambios!', 'Aviso!');
         this.volver();
    }); 
    
  }

  volver(){
    this.router.navigate(['/pages/matricula']);
    
  }


  getItems() {

    this._matriculaService.query({}).subscribe(items => {
      this.matriculas = items;
    });


  }
  getByID(){
    this._matriculaService.get(this.id).subscribe(resp => {
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
  
   


