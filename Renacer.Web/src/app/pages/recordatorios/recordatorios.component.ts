import { Component, OnInit, ViewEncapsulation, ViewChild } from '@angular/core';
import { ToastContainerDirective, ToastrService } from 'ngx-toastr';

@Component({
  selector: 'az-recordatorios',
  encapsulation: ViewEncapsulation.None,
  templateUrl: './recordatorios.component.html',
  styleUrls: ['./recordatorios.component.scss']
})
export class RecordatoriosComponent implements OnInit {
  //items=[];
  @ViewChild(ToastContainerDirective) toastContainer: ToastContainerDirective;
  items = [
    { "id": 0, "name": "Available" },
    { "id": 1, "name": "Ready" },
    { "id": 2, "name": "Started" },
    { "id": 3, "name": "Available" },
    { "id": 4, "name": "Ready" }
 
  ];
  constructor(private toastrService: ToastrService) { }

  ngOnInit() {
   /*  this.items =[
      "hola ","asdasdasd","HUguito","Augusto","Mago"
    ] */
    this.toastrService.overlayContainer = this.toastContainer;
  }

  cerrar(){
    console.log("Hizo Click en borrar");
    this.toastrService.warning('Esta seguro de eliminar el recordatorio?');
  }

}
