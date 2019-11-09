import { Injectable } from '@angular/core';
import { Router } from '@angular/router';
import { Pago } from './evento.service';
import { Matricula } from '../modelos/matricula';
import { DatePipe } from '@angular/common';

@Injectable({
  providedIn: 'root'
})
export class ImprimirService {
    public pago: Pago;
    public evento: String;
  
    fechaActual = '';
  constructor(private datePipe: DatePipe) { 
    this.fechaActual = this.datePipe.transform(new Date(), 'yyyy-MM-dd');
  }

  /*   public imprimirPDF(_pago:Pago){
      this.pago= _pago;
      this.imprimirPago(_pago);
    } */
  public imprimirPago(_pago: Pago) {
    //let image ="../assets/az_logo.png"
    let fechaCobro = this.datePipe.transform(_pago.fechaCobro, 'yyyy-MM-dd');
    let content =
      ` <div class="invoice-box">
  <table cellpadding="0" cellspacing="0">
      <tr class="top">
          <td colspan="2">
              <table>
                  <tr>
                      <td class="title">
                          <img src="../../../assets/img/logo/az_logo.png"> 
                      </td>
                      
                      <td>
                          Nro recibo #: ${_pago.nroRecibo}<br>
                          Creación: ${fechaCobro}<br>                         
                      </td>
                  </tr>
              </table>
          </td>
      </tr>
      
      <tr class="information">
          <td colspan="2">
              <table>
                  <tr>
                      <td>
                      Foro de los sabios.<br>
                      Calle Juan Felipe Vilela 220<br>
                      5021 Córdoba, Argentina
                      </td>
                      
                      <td>
                      fundacionrenacereventos@gmail.com
                      </td>
                  </tr>
              </table>
          </td>
      </tr>
      
      <tr class="heading">
          <td>
                Método de Pago
          </td>
          
          <td>
               ${_pago.metodoPago} #
          </td>
      </tr>
      
       
      <tr class="heading">
          <td>
          Concepto
          </td>
          
          <td>
          Precio
          </td>
      </tr>
      
      <tr class="item">
          <td>
          Pago ${_pago.nombre} del evento
          </td>
          
          <td>
          ${_pago.monto}
          </td>
      </tr>
      
    
      
      <tr class="total">
          <td></td>
          
          <td>
          Total: ${_pago.monto}
          </td>
      </tr>
  </table>
</div>`

    let popupWinindow = window.open('', '_blank', 'width=600,height=300,scrollbars=no,menubar=no,toolbar=no,location=no,status=no,titlebar=no');
    popupWinindow.document.open();
    popupWinindow.document.write(`
    <html>
    <head>
        <meta charset="utf-8">
        <title>Mis Eventos</title>
            ${this.style}
        
        </head>
        <body onload="window.print(); window.close()">
            ${content}
        </body>
    </html>
    `
    );
    popupWinindow.document.close();

  }


  public imprimirMatricula(_matricula: Matricula) {
    //let image ="../assets/az_logo.png"
    
    let content =
      ` <div class="invoice-box">
  <table cellpadding="0" cellspacing="0">
      <tr class="top">
          <td colspan="2">
              <table>
                  <tr>
                      <td class="title">
                          <img src="../../../assets/img/logo/az_logo.png" >
                      </td>
                      
                      <td>
                          Nro recibo #: 10025<br>
                          Creación: ${this.fechaActual}<br>                         
                      </td>
                  </tr>
              </table>
          </td>
      </tr>
      
      <tr class="information">
          <td colspan="2">
              <table>
                  <tr>
                      <td>
                      Foro de los sabios.<br>
                      Calle Juan Felipe Vilela 220<br>
                      5021 Córdoba, Argentina
                      </td>
                      
                      <td>
                      fundacionrenacereventos@gmail.com
                      </td>
                  </tr>
              </table>
          </td>
      </tr>
      
      <tr class="heading">
          <td>
                Método de Pago
          </td>
          
          <td>
               Efectivo #
          </td>
      </tr>
      
       
      <tr class="heading">
          <td>
          Concepto
          </td>
          
          <td>
          Precio
          </td>
      </tr>
      
      <tr class="item">
          <td>
            Matrícula Anual 2019 
          </td>
          
          <td>
          ${_matricula.valor}
          </td>
      </tr>
      
    
      
      <tr class="total">
          <td></td>
          
          <td>
          Total: ${_matricula.valor}
          </td>
      </tr>
  </table>
</div>`

    let popupWinindow = window.open('', '_blank', 'width=600,height=300,scrollbars=no,menubar=no,toolbar=no,location=no,status=no,titlebar=no');
    popupWinindow.document.open();
    popupWinindow.document.write(`
    <html>
    <head>
        <meta charset="utf-8">
        <title>Mis Eventos</title>
            ${this.style}
        
        </head>
        <body onload="window.print(); window.close()">
            ${content}
        </body>
    </html>
    `
    );
    popupWinindow.document.close();

  }









  style =
    `<style>
  .invoice-box {
      max-width: 800px;
      margin: auto;
      padding: 30px;
      border: 1px solid #eee;
      box-shadow: 0 0 10px rgba(0, 0, 0, .15);
      font-size: 16px;
      line-height: 24px;
      font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
      color: #555;
  }
  
  .invoice-box table {
      width: 100%;
      line-height: inherit;
      text-align: left;
  }
  
  .invoice-box table td {
      padding: 5px;
      vertical-align: top;
  }
  
  .invoice-box table tr td:nth-child(2) {
      text-align: right;
  }
  
  .invoice-box table tr.top table td {
      padding-bottom: 20px;
  }
  
  .invoice-box table tr.top table td.title {
      font-size: 45px;
      line-height: 45px;
      color: #333;
  }
  
  .invoice-box table tr.information table td {
      padding-bottom: 40px;
  }
  
  .invoice-box table tr.heading td {
      background: #eee;
      border-bottom: 1px solid #ddd;
      font-weight: bold;
  }
  
  .invoice-box table tr.details td {
      padding-bottom: 20px;
  }
  
  .invoice-box table tr.item td{
      border-bottom: 1px solid #eee;
  }
  
  .invoice-box table tr.item.last td {
      border-bottom: none;
  }
  
  .invoice-box table tr.total td:nth-child(2) {
      border-top: 2px solid #eee;
      font-weight: bold;
  }
  
  @media only screen and (max-width: 600px) {
      .invoice-box table tr.top table td {
          width: 100%;
          display: block;
          text-align: center;
      }
      
      .invoice-box table tr.information table td {
          width: 100%;
          display: block;
          text-align: center;
      }
  }
  
  /** RTL **/
  .rtl {
      direction: rtl;
      font-family: Tahoma, 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
  }
  
  .rtl table {
      text-align: right;
  }
  
  .rtl table tr td:nth-child(2) {
      text-align: left;
  }
  </style>`





}
