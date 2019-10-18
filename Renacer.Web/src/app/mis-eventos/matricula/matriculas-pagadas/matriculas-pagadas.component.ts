import { Component, OnInit, ViewChild, ElementRef } from '@angular/core';
import { MatriculaxsocioService } from '../../../servicios/matriculaxsocio.service';
import { MatriculaXsocio } from '../../../modelos/matricula-xsocio';
import { SocioServices, SocioMatriculaServices, Socio } from '../../../servicios/socio.service';
import { Matricula } from '../../../modelos/matricula';
import { MatriculaServices } from '../../../servicios/matricula.service';
import { Array } from 'core-js';
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



  @ViewChild('contenidoTabla', {static: false}) tabla: ElementRef;

  constructor(private _matriculaxsocioService: MatriculaxsocioService,
    private _matriculaService: SocioMatriculaServices,
    private _socioService: SocioServices ) { }

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
      break;
      case ('sinPagar'):
        this.matriculasSinPagar();
      break;


  }
}

Imprimir(){
  /* let doc = new jsPDF();
  var totalPagesExp = "1";

  let columns = ["ID", "Name", "Country"];
  let rows = [
      [1, "Shaw", "Tanzania"],
      [2, "Nelson", "Kazakhstan"],
      [3, "Garcia", "Madagascar"],
  ];

  var img = new Image();
  img.src = "../../assets/img/logo/az_logo_full.png"
  //assets/img/logo/az_logo_full.png
  var header = function (data) {
    doc.addImage(img, 'PNG', 0, 0);
    //doc.addImage(image base64_source, 'image format', logo_sizes.centered_x, _y, logo_sizes.w, logo_sizes.h);
    //Image must be Base64 encoded
};

  //doc.addImage(img, 'PNG', 0, 0);
  doc.autoTable(columns, rows,{margin: {top: 30}, beforePageContent: header})
  doc.save('table.pdf');  */
  let columns = [["ID", "Name", "Country"]];
  let rows = [
      [1, "Shaw", "Tanzania"],
      [2, "Nelson", "Kazakhstan"],
      [3, "Garcia", "Madagascar"],
  ];
  let title = '';
  switch (this.filtro) {
    case ('pagadas'):
     title = 'Socios que pagaron la matricula del año 2019'; //anio 2019 sin harcode
    break;
    case ('sinPagar'):
      title = 'Socios que adeudan la matricula del año 2019';//anio 2019 sin harcode
    break;
  }

  var doc = new jsPDF();
  var totalPagesExp = "{total_pages_count_string}";

  var img = new Image();
  img.src = "../../assets/img/logo/az_logo.png"

 

  doc.autoTable({
      head: columns,
      body: rows,
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


  doc.save('table.pdf'); 



}


}
