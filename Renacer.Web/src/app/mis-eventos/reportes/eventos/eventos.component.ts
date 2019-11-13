import { Component, OnInit } from '@angular/core';
import { TipoEvento, TipoEventoServices, EventoServices, Evento } from '../../../servicios/evento.service';
import { EspacioComun, EspacioServices } from '../../../servicios/espacio.service';
import { EncargadoEvento, EncargadoEventoServices } from '../../../servicios/encargado.service';
import { DatePipe } from '@angular/common';
import { ToastrService } from 'ngx-toastr';
import { ExcelService } from '../../../servicios/excel.service';

@Component({
  selector: 'az-eventos',
  templateUrl: './eventos.component.html',
  styleUrls: ['./eventos.component.scss']
})
export class EventosComponent implements OnInit {

  public tiposEventos:TipoEvento[];
  public espacios:EspacioComun[];
  public encargados:EncargadoEvento[];
  public encargado:EncargadoEvento;
  public espacio:EspacioComun;
  public tipoEvento:TipoEvento;
  public gratuito:Boolean = false;
  public fechaDesde:string;
  public fechaHasta:string;
  public monto:number;
  public estado:string;
  public eventos :Evento[];
  public eventosOriginal :Evento[];
  private dataExportar:any[];

  public showDetail=false;
  constructor(
    private tipoEventoServ:TipoEventoServices,
    private encargadoServ:EncargadoEventoServices,
    private espacioServ:EspacioServices,
    private _itemsService:EventoServices,
    private datePipe: DatePipe,
    private toastrService: ToastrService,
    private excelService:ExcelService
  ) {
    this.dataExportar = new Array();
   }

  ngOnInit() {
    this.tipoEventoServ.query({}).subscribe(_items => {
      this.tiposEventos = _items;
    });
    
    this.espacioServ.query({}).subscribe(items => {
      this.espacios = items;
    });

    this.encargadoServ.query({}).subscribe(items => {
      this.encargados = items;    
    });
    
    this._itemsService.query({'search':' '}).subscribe(items => {
      //this.eventos=items;
      this.eventosOriginal=items;
      this.eventos =this.eventosOriginal;
    });

  }

  filtrar(){
    //Filtra por evento gratuito o no
    
    
    if(this.encargado == null && this.espacio == null && this.fechaDesde == null
      && this.fechaHasta == null && this.monto == null && this.estado==null &&
      this.tipoEvento == null){
        this.toastrService.error('Debe elegir un filtro');
        return;
    }
    this.showDetail=true;
    this.eventos= this.eventosOriginal;   
    this.eventos = this.eventos.filter((item: Evento) => {
      return item.gratuito == this.gratuito;
    });

    if(this.encargado != null ){
      this.eventos = this.eventos.filter((item: Evento) => {
        return item.idEncargado == this.encargado.id;
    });
    }
    if(this.espacio != null){
      this.eventos = this.eventos.filter((item: Evento) => {
        return item.idEspacio == this.espacio.id;
    });
    } 
    if(this.fechaDesde != null){
    
      this.eventos = this.eventos.filter((item: Evento) => {
      return this.datePipe.transform(item.fechaDesde, 'yyyy-MM-dd') >= this.fechaDesde;
     });
    }

    if(this.fechaHasta != null){
    
      this.eventos = this.eventos.filter((item: Evento) => {
      return this.datePipe.transform(item.fechaHasta, 'yyyy-MM-dd') <= this.fechaHasta;
     });
    }

    if(this.monto != null){
    
      this.eventos = this.eventos.filter((item: Evento) => {
      return item.monto <= this.monto;
     });
    }
    if(this.estado != null && this.estado != "Todos"){
      this.eventos = this.eventos.filter((item: Evento) => {
        return item.estado == this.estado;
    
    });
    }

    if(this.tipoEvento != null){
      this.eventos = this.eventos.filter((item: Evento) => {
        return item.idTipoEvento == this.tipoEvento.id;
    });
    } 
   
  
   
  }

  downloadExcel(){
    const tituloWorkBook = 'Eventos';
    const titlulo = 'Reporte Eventos';
    const nombreArchivo= 'eventos.xlsx'
    const cabeceras = ["Nombre", "Descripción", "Estado", "Fecha Inicio", "Fecha Fin","Cupo Mínimo", "Cupo Máximo", "Monto", "Cuotas", 
  "Inicio Inscripción","Fin Inscripción"]
console.log(this.eventos);
  this.eventos.forEach(evento => {
    var data = [evento.nombre,evento.descripcion,evento.estado,evento.fechaDesde,evento.fechaHasta,evento.cupoMinimo,evento.cupoMaximo,evento.monto,
      evento.cantidadCuota,evento.fechaDesdeInscripcion,evento.fechaHastaInscripcion];
this.dataExportar.push(data );
  });
  let filtros= [];
  if(this.encargado != null) filtros.push('Encargado: '+ this.encargado.nombre + ' ' + this.encargado.apellido );
  if(this.fechaDesde != null) filtros.push('Fecha Desde: '+ this.fechaDesde);
  if(this.fechaHasta != null) filtros.push('Fecha Hasta: '+ this.fechaHasta );
  if(this.monto != null) filtros.push('Monto hasta: '+ this.monto );
  if(this.estado != null) filtros.push('Estado: '+ this.estado);
  if(this.tipoEvento != null) filtros.push('Tipo Evento: '+ this.tipoEvento.nombre );
  if(this.gratuito){
    filtros.push('Gratuito: Si');
  } else{
    filtros.push('Gratuito: No');
  }
  this.excelService.reporteExcel(tituloWorkBook,titlulo,nombreArchivo,cabeceras,this.dataExportar,filtros);
/*  
  this.encargado == null && this.espacio == null && this.fechaDesde == null
      && this.fechaHasta == null && this.monto == null && this.estado==null &&
      this.tipoEvento == null
  let filtros= ['Filtros'];
 if(this.filter.sexo != '' &&  this.filter.sexo != null) filtros.push('Sexo: '+ this.filter.sexo);
 if(this.filter.edadDesde != '' && this.filter.edadDesde != null) filtros.push('Edad Desde: '+ this.filter.edadDesde);
 if(this.filter.edadHasta != '' && this.filter.edadHasta != null) filtros.push('Edad Hasta: '+ this.filter.edadHasta);
 if(this.filter.fechaDesde != '' && this.filter.fechaDesde != null) filtros.push('fechaDesde: '+ this.filter.fechaDesde);
 if(this.filter.fechaHasta != '' && this.filter.fechaHasta != null) filtros.push('fechaHasta: '+ this.filter.fechaHasta);
 if(this.filter.estadoCivil != '' && this.filter.estadoCivil != null) filtros.push('Estado Civil: '+ this.filter.estadoCivil);
if(this.filter.Tags.length > 0){
  let tags = 'Tags: '
  this.filter.Tags.forEach(tag => {
    tags += tag + ',';
});
   filtros.push(tags);
}
  this.excelService.reporteExcel(tituloWorkBook,titlulo,nombreArchivo,cabeceras,this.dataExportar,filtros);
   */
  }


}
