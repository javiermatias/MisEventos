import { Component, OnInit } from '@angular/core';
import { CloudData, CloudOptions } from 'angular-tag-cloud-module';
import { ReporteServices, FiltroReporte } from '../../../servicios/reporte.service';

@Component({
  selector: 'az-mis-intereses',
  templateUrl: './mis-intereses.component.html',
  styleUrls: ['./mis-intereses.component.scss']
})
export class MisInteresesComponent implements OnInit {
  public  options: CloudOptions = {
    width : 600,
    height : 300,
    overflow: false,
  };
  public data: Array<CloudData> = [
    {text: 'Cargando...', weight: 20, link: '', color: '#ffaaee'}
  ];
  public filter:FiltroReporte = new FiltroReporte();
  constructor(private itemsServ:ReporteServices) { }

  ngOnInit() {

    this.getTags();

  
  }
  sortNumber(a, b) {
    return a - b;
  }
  getTags(){
    this.itemsServ.tags(this.filter).subscribe(result => {
      var items = [];
      for(var i = 0; i < result.length;i++)
      {
        items.push({
          text: result[i]["nombre"]
          ,weight: result[i]["cantidad"]? parseInt(result[i]["cantidad"]):0
          ,link: ''
          ,color: this.getRndColor()
        });
      }
      
      this.data = items.sort((a, b) => b.weight - a.weight);;
    })
  }
  getRndColor(){
    var letters = '0123456789ABCDEF';
    var color = '#';
    for (var i = 0; i < 6; i++) {
      color += letters[Math.floor(Math.random() * 16)];
    }
    return color;
  }

}
