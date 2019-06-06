import { Component, OnInit, ViewEncapsulation, ViewChild } from '@angular/core';
import { ToastrService } from 'ngx-toastr';
import { RecordatorioServices } from '../../resources/recordatorio.service';
import { Recordatorio } from '../../models/recordatorio';
import { analyzeAndValidateNgModules } from '@angular/compiler';

@Component({
  selector: 'az-recordatorios',
  templateUrl: './recordatorios.component.html',
  styleUrls: ['./recordatorios.component.scss']
})
export class RecordatoriosComponent implements OnInit {
  //items=[];
  showRecordatorio: boolean = false;
  borrar: boolean = true;

  recordatorios: Recordatorio[];

  constructor(private _recordatorioService: RecordatorioServices, private toastrService: ToastrService) { }

  ngOnInit() {

    this.getItems();

  }

  getItems() {

    this._recordatorioService.query({}, (items: Recordatorio[]) => {
      // console.log(items);
      this.recordatorios = items;
      // console.log(this.recordatorios);

    });
  }

  cerrar(reco: Recordatorio) {
    //console.log("Hizo Click en borrar");
    //aca tengo que hacer el cuadro de dialogo
    let id: any;
    id = reco.id;
    // console.log(reco.id);
    if (confirm("¿Estás seguro de eliminar el recordatorio " + reco.descripcion)) {
      // console.log("pase por el si");
      this._recordatorioService.remove({ id }, (resp: any) => {
        //Callback
        this.getItems();
        this.toastrService.success('¡Se eliminó el recordatorio!', 'Aviso!');
        //this.volver();
      });
    }




    //this.toastrService.warning('Esta seguro de eliminar el recordatorio?');
  }

  nuevoRecordatorio() {
    this.showRecordatorio = true;
  }

  guardo(cancelar: boolean) {
    //console.log("pase por guarod");
    // console.log(cancelar);
    if (cancelar) {
      this.showRecordatorio = false;
      //console.log("se hizo click en cancelar");
    } else {
      this.showRecordatorio = false;
      this.getItems();
      //console.log("se hizo click en guardar");
    }

  }

}
