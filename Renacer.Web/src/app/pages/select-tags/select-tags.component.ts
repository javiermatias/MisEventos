import { Component, OnInit,Input,OnChanges,Output,EventEmitter } from '@angular/core';
import {TagServices,Tag} from '../../resources/tag.service';


@Component({
  selector: 'az-select-tags',
  templateUrl: './select-tags.component.html',
  styleUrls: ['./select-tags.component.scss']
})
export class SelectTagsComponent implements OnInit {

  @Input() listaTags:Tag[];
  public tags = new Array<Tag>();
  public tagsIds = [];
  public selectedTag:any;

  constructor(private _dbServices:TagServices) {
   }

  ngOnInit() {
    this.getTags();
  }

  ngOnChanges(){
    if(this.listaTags == null){this.listaTags = new Array<Tag>();}
    for(var i = 0; i < this.tags.length;i++){
      for(var j = 0; j < this.listaTags.length;j++){
        if(this.tags[i].id == this.listaTags[j].id){
          this.tags[i]["selected"] = true;
        }
      }
    }
  }

  tagSelected(tag){
      this.actualizarTags(tag);
  }

estaSeleccionado(item){
var result = false;
if(this.listaTags == null){ return false;}
  for(var j = 0; j < this.listaTags.length;j++){
    if(item.id == this.listaTags[j].id){
      result = true;
    }
  }
  return result;
}

  actualizarTags(item){
    if(this.listaTags == null){this.listaTags = new Array<Tag>();}

    if(this.listaTags.filter(function(item2){ return item2.id == item.id}).length==0) {
      this.listaTags.push(item);
    }
    else{
      for(var j = 0; j < this.listaTags.length;j++){
        if(item.id == this.listaTags[j].id){
          this.listaTags.splice(j,1);
        }
      }
    }
  }

  getTags(){
    this._dbServices.query({},(items) => {
      this.tags = [];
     for(var i = 0; i < items.length;i++){
       var itemAux = new Tag(0,"");
       itemAux.id = items[i].id;
       itemAux.nombre = items[i].nombre;
       this.tags.push(itemAux);
     }
    });
  }
}
