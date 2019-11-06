import { Component, OnInit, EventEmitter, Output, Input } from '@angular/core';
import { Recordatorio } from '../../../modelos/recordatorio';
import { RecordatorioServices } from '../../../servicios/recordatorio.service';
import { ToastrService } from 'ngx-toastr'; 

@Component({
  selector: 'az-nuevo-recordatorio',
  templateUrl: './nuevo-recordatorio.component.html',
  styleUrls: ['./nuevo-recordatorio.component.scss']
})
export class NuevoRecordatorioComponent implements OnInit {
  @Input() recordatorio:Recordatorio;
  @Output() mostrarRecordatorio= new EventEmitter<boolean>();
  
  constructor(private _recordatorioService:RecordatorioServices, private mensajeServ: ToastrService) { }

  ngOnInit() {
    this.recordatorio = new Recordatorio();
    //this.click=false;
  }

  onSubmit() {
    //this.matricula.anio = new Date();
    //función asincrónica, puede tardar varios segundos   
    this._recordatorioService.save(this.recordatorio).subscribe(resp => {
       //Callback
         this.mensajeServ.success('Se guardo el recordatorio!', 'Aviso!');
         this.mostrarRecordatorio.emit(false);
         //this.volver();
    });
    
  }

  actualizarFecha(fecha: string) {
    console.log(fecha);
    let newDate = new Date(fecha);
     newDate.setDate(newDate.getDate() + 1 );
    console.log(newDate);
    this.recordatorio.fechaRecordatorio = newDate;
  
  }
  volver(cancelar: boolean){
    //console.log("click en volver");
    this.mostrarRecordatorio.emit(true);
  }
}
