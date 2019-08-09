import { Component, OnInit } from '@angular/core';

import { Socio, SocioMatriculaServices, SocioServices } from '../../../servicios/socio.service';
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
    
    this._matriculaService.cambiarEstadoMatricula({'idSocio': _socio.id},(resp:any) => {
      //Callback
        this.mensajeServ.success('Se ha registrado el pago!', 'Aviso!');
        this.getItems();
        //this.volver();

        this.printPDF();

   });
  }

  printPDF(){
    const contenido = `
    <div id="texte_a_afficher" class="texte_inselectionnable" style="height: 440px;">
    <span class="stabilisation"></span><p style="text-align: center;"><strong>RECIBO</strong></p>
<p style="text-align: center;"><strong></strong></p>
<p style="text-align: left;"><br><span id="span_id_trato">Don</span> <span id="span_id_nombre_particular_recibe_pago"><span class="variable_vide">________</span></span>, con <span id="span_id_tipo_doc_personal_particular_recibe_pago">DNI/NIF</span> <span id="span_id_numero_doc_personal_particular_recibe_pago"><span class="variable_vide">________</span></span>, y domicilio en <span id="span_id_direccion_particular_recibe_pago"><span class="variable_vide">________</span></span>, certifica haber recibido el siguiente pago:</p>
<p style="text-align: left;"><br><strong>RECIBÍ DE: </strong><span id="span_id_trato_pagador">Don</span> <span id="span_id_nombre_particular_realiza_pago"><span class="variable_vide">________</span></span>, con <span id="span_id_tipo_doc_personal_particular_recaliza_pago">DNI/NIF</span> <span id="span_id_numero_doc_personal_particular_realiza_pago"><span class="variable_vide">________</span></span>, y domicilio en <span id="span_id_direccion_particular_realiza_pago"><span class="variable_vide">________</span></span> </p>
<p style="text-align: left;"><strong>LA SUMA DE:</strong> <span id="span_id_cantidad_pagada"><span class="variable_vide">________</span></span> € (________)</p>
<p style="text-align: left;"><strong>EN CONCEPTO DE: </strong><span id="span_id_motivo_del_pago"><span class="variable_vide">________</span></span></p>
<p style="text-align: left;"><strong><br></strong>Forma de pago: EN EFECTIVO.</p>
<p style="text-align: left;">Fecha de pago: <span id="span_id_fecha_pago"><span class="variable_vide">________</span></span></p>
<p style="text-align: left;"><br><br>Hecho en <span id="span_id_ciudad"><span class="variable_vide">________</span></span>, el <span id="span_id_fecha_recibo"><span class="variable_vide">________</span></span></p>
<p style="text-align: center;"><br><br><strong>FIRMAS</strong></p>
<p style="text-align: center;"><br><br></p>					</div>  `;
   
    let popupWinindow = window.open('', '_blank', 'width=600,height=700,scrollbars=no,menubar=no,toolbar=no,location=no,status=no,titlebar=no'); 
    popupWinindow.document.open(); 
    popupWinindow.document.write('<html><head><link rel="stylesheet" type="text/css" href="style.css" /></head><body onload="window.print()">' + contenido + '</html>'); 
    popupWinindow.document.close(); 
  }
}

