import { Component, OnInit,Input,OnChanges,Output,EventEmitter } from '@angular/core';
import { DomSanitizer, SafeHtml } from "@angular/platform-browser";
import {TagServices,Tag} from '../../../resources/tag.service';
import { NguiAutoCompleteModule  } from '@ngui/auto-complete';

@Component({
  selector: 'az-select-tags',
  templateUrl: './select-tags.component.html',
  styleUrls: ['./select-tags.component.scss']
})
export class SelectTagsComponent implements OnInit {

  @Input() listaTags:Tag[];
  @Input() enabled:boolean;
  public tags = new Array<Tag>();
  public tagsIds = [];
  public selectedTag:string;

  constructor(private _dbServices:TagServices,private _sanitizer: DomSanitizer) {
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

  tagSelected(tag,removeTag){
    let tagItem ;
    console.log (tag);
    if(removeTag /* || tag.constructor.name == "Tag" */ ){
      tagItem = new Tag(0,tag.nombre);
      this.borrarTag(tagItem);
    }else{
      var tagNew = new Tag(0,this.selectedTag);
       this.tags.push(tagNew);
      tagItem = tagNew;
      this.actualizarTags(tagItem);
    }
    
  }

  estaSeleccionado(item){
    var result = false;
    if(this.listaTags == null){ return false;}
    for(var j = 0; j < this.listaTags.length;j++){
      if(item.nombre == this.listaTags[j].nombre){
        result = true;
      }
    }
    return result;
  }

  borrarTag(item){
    for(var j = 0; j < this.listaTags.length;j++){
      if(item.nombre == this.listaTags[j].nombre){
        this.listaTags.splice(j,1);
      }
    }
}

  actualizarTags(item){
    if(this.listaTags == null){this.listaTags = new Array<Tag>();}

    if(this.listaTags.filter(function(item2){ return item2.nombre === item.nombre}).length==0) {
      this.listaTags.push(item);
      return;
    }
     else{
      for(var j = 0; j < this.listaTags.length;j++){
        if(item.nombre == this.listaTags[j].nombre){
          this.listaTags.splice(j,1);
        }
      }
    } 
    this.selectedTag = "";
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

  autocompleListFormatter = (data: any) => {
    let selected = this.listaTags.filter((item)=> item.nombre == data.nombre).length == 1;
    let html = `<span>${data.nombre}`;
    if(selected){
      html +=`<span class="fa fa-check" style='color:green;'></span>`
    }
    html +=`</span>`
    return this._sanitizer.bypassSecurityTrustHtml(html);
  }
}
