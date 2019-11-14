import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { UserServices, Usuario } from '../../../../servicios/users.service';
import { ToastrService } from 'ngx-toastr';
import { PagoServices, Pago } from '../../../../servicios/evento.service';


@Component({
  selector: 'az-comprobante-pago',
  templateUrl: './comprobante-pago.component.html',
  styleUrls: ['./comprobante-pago.component.scss']
})
export class ComprobantePagoComponent implements OnInit {

  //public usuario:Usuario;
  showDetail = false;
  idPago:number;

  pago:Pago;
  constructor(private route: ActivatedRoute, private router: Router,
    private mensajeServ: ToastrService,private _usersService:UserServices, private _pagoService:PagoServices) { }

  ngOnInit() {
    //this.usuario = this._usersService.getCurrent();
    this.idPago = Number(this.route.snapshot.params['id']);
    if(this.idPago != null){
      this.verItem(this.idPago);
    }
    //console.log(this.idPago);
  }

  verItem(idPago:number) {
    this._pagoService.get(idPago).subscribe(resp => {
       this.pago= resp;       
      this.pago.estaPagado=true;
      this.pago.metodoPago="Tarjeta";
      console.log(this.pago);
      this.showDetail = true;
      this._pagoService.save(this.pago).subscribe(resp => {
    
     });

    });
  }

}
