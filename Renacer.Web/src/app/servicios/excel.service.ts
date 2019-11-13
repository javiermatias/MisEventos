import { Injectable } from '@angular/core';


// import * as Excel from "exceljs/dist/exceljs.min.js";
// import * as ExcelProper from "exceljs";
// let workbook: ExcelProper.Workbook = new Excel.Workbook()
import * as fs from 'file-saver';
import { DatePipe } from '@angular/common';
import { DeudaCuota } from '../modelos/deuda-cuota';
import { Evento } from './evento.service';
// polyfills required by exceljs
declare var System: any;

@Injectable({
  providedIn: 'root'
})
export class ExcelService {
  logoBase64 = "data:image/png;base64,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";
  constructor(private datePipe: DatePipe) { }


  public reporteExcelDeudores(_tituloWorkBook:string,_titulo:string,
    _nombreArchivo:String,_header:string[],
     _listaDeudores:DeudaCuota[]) {
    //const Excel = require('exceljs');


    System.import('exceljs').then(Excel => {
 
        //Excel Title, Header, Data
    const titulo = _titulo;
    const header = _header;
  
    let workbook = new Excel.Workbook();
    let worksheet =  workbook.addWorksheet(_tituloWorkBook,{properties:{tabColor:{argb:'FFC0000'}}});
    let logo =  workbook.addImage({
      base64: this.logoBase64,
      extension: 'png',
    });
    
    worksheet.addImage(logo, {
      tl: { col: 0, row: 0 },
      br: { col: 0.7, row: 3 }
    });
    //worksheet.mergeCells('A1:D2');
    
    //Add Row and formatting

    var cell = worksheet.getCell('B3'); 
    cell.font= { name: 'Comic Sans MS', family: 4, size: 16, underline: 'double', bold: true }
    cell.value = titulo;
   
    worksheet.addRow([]);
    var cellFecha = worksheet.getCell('E1'); 
    cellFecha.value= 'Fecha : ' + this.datePipe.transform(new Date(), 'medium')
   
    worksheet.addRow([]);

    let contador = 0;
    let numeroFila=0;
    _listaDeudores.forEach(cuota => {
      
      let numeroRow='';
       let _cuota = worksheet.addRow([cuota.nombreCuota]);
       _cuota.getCell(1).fill = {
        type: 'pattern',
        pattern: 'solid',
        fgColor: { argb: 'FFCCFFE5' }
      };
      _cuota.getCell(1).border = { top: { style: 'thin' }, left: { style: 'thin' }, bottom: { style: 'thin' }, right: { style: 'thin' } }
      worksheet.addRow([]);
  
      let socios = [];
      cuota.listaSocios.forEach(socio => {
        let _socio= [socio.nombre,socio.apellido,socio.nroDocumento,socio.telefono,socio.email]
        socios.push(_socio);
      });
      
      if(contador==0){
       numeroRow = 'A7'
       numeroFila=7;
       console.log(numeroRow);
      }else{
        numeroFila = numeroFila + cuota.listaSocios.length + 2;
        numeroRow = 'A' + numeroFila;
        console.log(numeroRow);
      }
      worksheet.addTable({
        name: 'MyTable' + numeroFila ,
        ref: numeroRow,
        headerRow: true,  
        style: {
          //theme: 'TableStyleLight3',
          showRowStripes: true,
        },
        columns: [
          {name: 'Nombre'},
          {name: 'Apellido'},
          {name: 'Dni'},
          {name: 'Telefono'},
          {name: 'Mail'}
        ],
        
       // const cabeceras = ["Nombre","Apellido","Dni","Telefono","Mail"]
     
        rows: socios,
      });
      contador++;
}



);
/*    */
for (let index = 0; index < header.length; index++) {
  worksheet.getColumn(index+1).width = 30;

  
}
   
    worksheet.addRow([]);
    //Footer Row
    let footerRow = worksheet.addRow(['Reporte autómatico generado por Mis Eventos']);
    footerRow.getCell(1).fill = {
      type: 'pattern',
      pattern: 'solid',
      fgColor: { argb: 'FFCCFFE5' }
    };
    footerRow.getCell(1).border = { top: { style: 'thin' }, left: { style: 'thin' }, bottom: { style: 'thin' }, right: { style: 'thin' } }
    //Merge Cells
    worksheet.mergeCells(`A${footerRow.number}:E${footerRow.number}`);
    //Generate Excel File with given name
    workbook.xlsx.writeBuffer().then((data) => {
      let blob = new Blob([data], { type: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' });
      fs.saveAs(blob, _nombreArchivo);
    })
   });
 
  }

  public reporteExcel(_tituloWorkBook:string,_titulo:string,_nombreArchivo:String,_header:string[],_data:string[][], _filtros:string[]) {
    //const Excel = require('exceljs');

    System.import('exceljs').then(Excel => {
 
        //Excel Title, Header, Data
    const titulo = _titulo;
    const header=[];
    _header.forEach(head => {
      header.push({name: head})
    });
    //const header = _header;
    const data = _data;
    let workbook = new Excel.Workbook();
    let worksheet =  workbook.addWorksheet(_tituloWorkBook,{properties:{tabColor:{argb:'FFC0000'}}});
    let logo =  workbook.addImage({
      base64: this.logoBase64,
      extension: 'png',
    });
    
    worksheet.addImage(logo, {
      tl: { col: 0, row: 0 },
      br: { col: 0.7, row: 3 }
    });
    //worksheet.mergeCells('A1:D2');
    
    //Add Row and formatting

    var cell = worksheet.getCell('C3'); 
    cell.font= { name: 'Comic Sans MS', family: 4, size: 16, underline: 'double', bold: true }
    cell.value = titulo;
   
    worksheet.addRow([]);
    var cellFecha = worksheet.getCell('E1'); 
    cellFecha.value= 'Fecha : ' + this.datePipe.transform(new Date(), 'medium')
    //Merge Cells
    worksheet.mergeCells(`A5:F5`);

    //worksheet.addRow(_filtros);
    var cellFiltros = worksheet.getCell('A5'); 
    cellFiltros.font= { name: 'Comic Sans MS', family: 4, size: 12}
    cellFiltros.fill = {
      type: 'pattern',
      pattern: 'solid',
      fgColor: { argb: 'FFCCFFE5' }
    };
    cellFiltros.value = 'Filtros: ' + _filtros.toString();

    
   
    
    //Blank Row 
    worksheet.addRow([]);
    worksheet.addRow([]);

    worksheet.addTable({
      name: '_tituloWorkBook',
      ref: 'A8',
      headerRow: true,  
      style: {
        //theme: 'TableStyleLight3',
        showRowStripes: true,
      },
      columns: header,
   
      rows: data
    });




    //Viejo con columna en amarillo, guardo por las dudas
/*     let headerRow = worksheet.addRow(header);
    
    // Cell Style : Fill and Border
    headerRow.eachCell((cell, number) => {
      cell.fill = {
        type: 'pattern',
        pattern: 'solid',
        fgColor: { argb: 'FFFFFF00' },
        bgColor: { argb: 'FF0000FF' }
      }
      cell.border = { top: { style: 'thin' }, left: { style: 'thin' }, bottom: { style: 'thin' }, right: { style: 'thin' } }
    })
  
    data.forEach(d => {
      let row = worksheet.addRow(d);

    }
    ); */

    for (let index = 0; index < header.length; index++) {
      worksheet.getColumn(index+1).width = 20;
  /*   worksheet.getColumn(2).width = 20;
    worksheet.getColumn(3).width = 20;
    worksheet.getColumn(4).width = 20; */
      
    }

   
    worksheet.addRow([]);
    //Footer Row
    let footerRow = worksheet.addRow(['Reporte autómatico generado por Mis Eventos']);
    footerRow.getCell(1).fill = {
      type: 'pattern',
      pattern: 'solid',
      fgColor: { argb: 'FFCCFFE5' }
    };
    footerRow.getCell(1).border = { top: { style: 'thin' }, left: { style: 'thin' }, bottom: { style: 'thin' }, right: { style: 'thin' } }
    //Merge Cells
    worksheet.mergeCells(`A${footerRow.number}:F${footerRow.number}`);
    //Generate Excel File with given name
    workbook.xlsx.writeBuffer().then((data) => {
      let blob = new Blob([data], { type: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' });
      fs.saveAs(blob, _nombreArchivo);
    })
   });
 

  }

  public generateExcel(tituloWorkBook: string, titulo: string, header: string[], data: string[][]) {
    //const Excel = require('exceljs');

    System.import('exceljs').then(Excel => {
      console.log(Excel);
      //Excel Title, Header, Data
      const title = 'Reporte';
      const header = ["Year", "Month", "Make", "Model", "Quantity", "Pct"]
      const data = [
        [2007, 1, "Volkswagen ", "Volkswagen Passat", 1267, 10],
        [2007, 1, "Toyota ", "Toyota Rav4", 819, 6.5],
        [2007, 1, "Toyota ", "Toyota Avensis", 787, 6.2],
        [2007, 1, "Volkswagen ", "Volkswagen Golf", 720, 5.7],
        [2007, 1, "Toyota ", "Toyota Corolla", 691, 5.4],
        [2007, 1, "Peugeot ", "Peugeot 307", 481, 3.8],
        [2008, 1, "Toyota ", "Toyota Prius", 217, 2.2],
        [2008, 1, "Skoda ", "Skoda Octavia", 216, 2.2],
        [2008, 1, "Peugeot ", "Peugeot 308", 135, 1.4],
        [2008, 2, "Ford ", "Ford Mondeo", 624, 5.9],
        [2008, 2, "Volkswagen ", "Volkswagen Passat", 551, 5.2],
        [2008, 2, "Volkswagen ", "Volkswagen Golf", 488, 4.6],
        [2008, 2, "Volvo ", "Volvo V70", 392, 3.7],
        [2008, 2, "Toyota ", "Toyota Auris", 342, 3.2],
        [2008, 2, "Volkswagen ", "Volkswagen Tiguan", 340, 3.2],
        [2008, 2, "Toyota ", "Toyota Avensis", 315, 3],
        [2008, 2, "Nissan ", "Nissan Qashqai", 272, 2.6],
        [2008, 2, "Nissan ", "Nissan X-Trail", 271, 2.6],
        [2008, 2, "Mitsubishi ", "Mitsubishi Outlander", 257, 2.4],
        [2008, 2, "Toyota ", "Toyota Rav4", 250, 2.4],
        [2008, 2, "Ford ", "Ford Focus", 235, 2.2],
        [2008, 2, "Skoda ", "Skoda Octavia", 225, 2.1],
        [2008, 2, "Toyota ", "Toyota Yaris", 222, 2.1],
        [2008, 2, "Honda ", "Honda CR-V", 219, 2.1],
        [2008, 2, "Audi ", "Audi A4", 200, 1.9],
        [2008, 2, "BMW ", "BMW 3-serie", 184, 1.7],
        [2008, 2, "Toyota ", "Toyota Prius", 165, 1.6],
        [2008, 2, "Peugeot ", "Peugeot 207", 144, 1.4]
      ];
      //Create workbook and worksheet
      //let workbook = new Excel.workbook();
      let workbook = new Excel.Workbook();
      let worksheet = workbook.addWorksheet('Car Data');
      //Add Row and formatting
      let titleRow = worksheet.addRow([title]);
      titleRow.font = { name: 'Comic Sans MS', family: 4, size: 16, underline: 'double', bold: true }
      worksheet.addRow([]);
      let subTitleRow = worksheet.addRow(['Date : ' + this.datePipe.transform(new Date(), 'medium')])
      //Add Image
      let logo = workbook.addImage({
        base64: this.logoBase64,
        extension: 'png',
      });
      worksheet.addImage(logo, 'A1:A3');
      worksheet.mergeCells('B1:D2');
      //Blank Row 
      worksheet.addRow([]);
      //Add Header Row
      let headerRow = worksheet.addRow(header);

      // Cell Style : Fill and Border
      headerRow.eachCell((cell, number) => {
        cell.fill = {
          type: 'pattern',
          pattern: 'solid',
          fgColor: { argb: 'FFFFFF00' },
          bgColor: { argb: 'FF0000FF' }
        }
        cell.border = { top: { style: 'thin' }, left: { style: 'thin' }, bottom: { style: 'thin' }, right: { style: 'thin' } }
      })
      // worksheet.addRows(data);
      // Add Data and Conditional Formatting
      data.forEach(d => {
        let row = worksheet.addRow(d);
        let qty = row.getCell(5);
        let color = 'FF99FF99';
        if (+qty.value < 500) {
          color = 'FF9999'
        }
        qty.fill = {
          type: 'pattern',
          pattern: 'solid',
          fgColor: { argb: color }
        }
      }
      );
      worksheet.getColumn(3).width = 30;
      worksheet.getColumn(4).width = 30;
      worksheet.addRow([]);
      //Footer Row
      let footerRow = worksheet.addRow(['This is system generated excel sheet.']);
      footerRow.getCell(1).fill = {
        type: 'pattern',
        pattern: 'solid',
        fgColor: { argb: 'FFCCFFE5' }
      };
      footerRow.getCell(1).border = { top: { style: 'thin' }, left: { style: 'thin' }, bottom: { style: 'thin' }, right: { style: 'thin' } }
      //Merge Cells
      worksheet.mergeCells(`A${footerRow.number}:F${footerRow.number}`);
      //Generate Excel File with given name
      workbook.xlsx.writeBuffer().then((data) => {
        let blob = new Blob([data], { type: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' });
        fs.saveAs(blob, 'CarData.xlsx');
      })
    });

  }



}
