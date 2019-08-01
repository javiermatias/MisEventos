import { Component, OnInit } from '@angular/core';
import { CloudData, CloudOptions } from 'angular-tag-cloud-module';
import {ReporteServices,FiltroReporte} from '../../../servicios/reporte.service';
import { Observable } from 'rxjs/Observable';
import 'rxjs/add/observable/of';


@Component({
  selector: 'az-tags-cloud',
  templateUrl: './tags-cloud.component.html',
  styleUrls: ['./tags-cloud.component.scss']
})
export class TagsCloudComponent implements OnInit {

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

  getTags(){
    this.itemsServ.tags(this.filter,(result) => {
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

      this.data = items;
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
