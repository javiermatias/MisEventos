import { Component, OnInit, ViewChild, ElementRef } from '@angular/core';
import { MatriculaxsocioService } from '../../../servicios/matriculaxsocio.service';
import { MatriculaXsocio } from '../../../modelos/matricula-xsocio';
import { SocioServices, SocioMatriculaServices, Socio } from '../../../servicios/socio.service';
import { Matricula } from '../../../modelos/matricula';
import { DatePipe } from '@angular/common';

/* import 'jspdf';
import 'jspdf-autotable';
declare let jsPDF; */
declare const require: any;
const jsPDF = require('jspdf');
require('jspdf-autotable');

@Component({
  selector: 'az-matriculas-pagadas',
  templateUrl: './matriculas-pagadas.component.html',
  styleUrls: []
})
export class MatriculasPagadasComponent implements OnInit {
  matriculas: MatriculaXsocio[];

  _matriculaXsocio: MatriculaXsocio;
  socios: Socio[];
  matricula: Matricula;

  largo: string;

  filtro: string;
   columns = [];
   rows = [];
  


  @ViewChild('contenidoTabla', {static: false}) tabla: ElementRef;

  constructor(private _matriculaxsocioService: MatriculaxsocioService,
    private _matriculaService: SocioMatriculaServices,
    private _socioService: SocioServices,
    private datePipe: DatePipe ) { }

  ngOnInit() {
    this.filtro = 'pagadas';
    this.getMatriculasPagadas();
    this.getMatricula();
  }

  getMatriculasPagadas() {

    this._matriculaxsocioService.query({}).subscribe(items => {
      this. matriculas = items;
      this.largo = this.matriculas.length.toString();
    })
  }

  matriculasSinPagar() {
    let _matriculas: MatriculaXsocio[] = [];
    this._socioService.query({'estado': 'DebeMatricula' }).subscribe(items => {
      this.socios = items;
      for (let _socio of this.socios) {
        let matriculaXsocio = new MatriculaXsocio();
             matriculaXsocio.socio = _socio;
             matriculaXsocio.matricula = this.matricula;
             matriculaXsocio.pago = this.matricula.valor;
            _matriculas.push(matriculaXsocio);
      }
      this.matriculas = _matriculas;
      this.largo = this.matriculas.length.toString();
    });
  }
  getMatricula() {
    this._matriculaService.getMatriculaActual().subscribe(item => {
      this.matricula = item;
    });
  }

  filtrar() {

    switch (this.filtro) {
      case ('pagadas'):
        this.getMatriculasPagadas();
    /*     this.matriculas.forEach(item => {
          let items = [item.socio.nombre +''+item.socio.apellido,item.matricula.anio,item.matricula.valor,item.fechaPago];
          this.rows.push(items);
        }   
        );
        console.log(this.rows); */
        
      break;
      case ('sinPagar'):
        this.matriculasSinPagar();
        
      break;


  }
}

Imprimir(){

  
  this.rows = [];
  let title = '';
  switch (this.filtro) {
    case ('pagadas'):
     title = 'Socios que pagaron la matricula del año 2019'; //anio 2019 sin harcode
     this.columns = [["Socio", "Matricula", "Monto","Fecha Pago"]];
     this.matriculas.forEach(item => {
       let items = [item.socio.nombre +' '+ item.socio.apellido,this.datePipe.transform(item.matricula.anio, 'yyyy'),'$' + item.matricula.valor,this.datePipe.transform(item.fechaPago, 'dd-MM-yyyy')];
       this.rows.push(items);
     }   
     );
     console.log(this.rows);
    break;
    case ('sinPagar'):
      title = 'Socios que adeudan la matricula del año 2019';//anio 2019 sin harcode
      this.columns = [["Socio", "Matricula", "Monto"]];
      this.matriculas.forEach(item => {
        let items = [item.socio.nombre +' '+ item.socio.apellido,this.datePipe.transform(item.matricula.anio, 'yyyy'),'$' + item.matricula.valor];
        this.rows.push(items);
      }   
      );
    break;
  }

  var doc = new jsPDF();
  var totalPagesExp = "{total_pages_count_string}";

  var img = new Image();
  img.src = "../../assets/img/logo/az_logo.png"

 

  doc.autoTable({
      head: this.columns,
      body: this.rows,
    //startY: 50, 
      didDrawPage: function (data) {
          // Header
          doc.setFontSize(20);
          doc.setTextColor(40);
          doc.setFontStyle('normal');
          if (img) {
              doc.addImage(img, 'PNG', data.settings.margin.left, 15, 10, 10);
          }
          //doc.addImage(base64Img, 'JPEG', data.settings.margin.left, 15, 10, 10);
          doc.text(title, data.settings.margin.left + 15, 22);

          // Footer
          var str = "Página " + doc.internal.getNumberOfPages()
          // Total page number plugin only available in jspdf v1.0+
          if (typeof doc.putTotalPages === 'function') {
              str = str + " de " + totalPagesExp;
          }
          doc.setFontSize(10);

          // jsPDF 1.4+ uses getWidth, <1.4 uses .width
          var pageSize = doc.internal.pageSize;
          var pageHeight = pageSize.height ? pageSize.height : pageSize.getHeight();
          doc.text(str, data.settings.margin.left, pageHeight - 10);
      },
      margin: {top: 30}
  });

  // Total page number plugin only available in jspdf v1.0+
  if (typeof doc.putTotalPages === 'function') {
      doc.putTotalPages(totalPagesExp);
  }


  doc.save('matriculas.pdf'); 



}


}
