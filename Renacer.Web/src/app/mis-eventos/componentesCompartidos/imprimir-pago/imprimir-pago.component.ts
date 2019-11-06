import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { ImprimirService } from '../../../servicios/imprimir.service';

@Component({
  selector: 'az-imprimir-pago',
  templateUrl: './imprimir-pago.component.html',
  styleUrls: ['./imprimir-pago.component.scss']
})
export class ImprimirPagoComponent implements OnInit {

  detalleRecibo: Promise<any>[];
  reciboIds: string[];
  constructor(route: ActivatedRoute,private printService: ImprimirService) { 
    this.reciboIds = route.snapshot.params['id']
    .split(',');
  }

  ngOnInit() {
    //his.printService.onDataReady();
 /*    this.detalleRecibo = this.reciboIds
    .map(id => this.getDetallesRecibo(id));
  Promise.all(this.detalleRecibo)
    .then(() => this.printService.onDataReady());  */
  }

  getDetallesRecibo(invoiceId) {
    const amount = Math.floor((Math.random() * 100));
    return new Promise(resolve =>
      setTimeout(() => resolve({amount}), 3000)
    );
  }
}
