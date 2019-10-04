import { Component, OnInit, Input, OnChanges, Output, EventEmitter } from '@angular/core';
import { DomSanitizer, SafeHtml } from '@angular/platform-browser';
import {TagServices, Tag} from '../../../servicios/tag.service';
import { NguiAutoCompleteModule  } from '@ngui/auto-complete';

@Component({
  selector: 'az-select-tags',
  templateUrl: './select-tags.component.html'
})
export class SelectTagsComponent implements OnInit, OnChanges {

  @Input() listaTags: Tag[];
  @Input() enabled: boolean;
  public tags = new Array<Tag>();
  public tagsIds = [];
  public selectedTag: string;

  constructor(private _dbServices: TagServices, private _sanitizer: DomSanitizer) {
  }

  ngOnInit() {
    if (this.listaTags == null) {this.listaTags = new Array<Tag>(); }
    this.getTags();
  }

  ngOnChanges() {
    this.tags.forEach(element => {
        if (this.estaSeleccionado(element)) {
          element['selected'] = true;
        }
    });
  }

  estaSeleccionado(item) {
   return this.listaTags.find(x => x.nombre === item.nombre) != null;
  }

  borrarTag(item) {
    const indiceABorrar = this.listaTags.findIndex(x => x.nombre === item.nombre);
    if (indiceABorrar > -1) { this.listaTags.splice(indiceABorrar, 1) };
  }

  actualizarTags(item) {
    let tagAActualizar = null;
    if (typeof item === 'string') {

      if (item === '') {return; }

        tagAActualizar = this.tags.find(x => x.nombre === item);

        if (tagAActualizar == null) {
          tagAActualizar = new Tag(0, item);
            this.tags.push(tagAActualizar);
          }
    } else { tagAActualizar = item; }

    if (this.estaSeleccionado(tagAActualizar)) { this.borrarTag(tagAActualizar); }
    else { this.listaTags.push(tagAActualizar); }
     this.selectedTag = '';
  }

  getTags() {
    this._dbServices.query({}).subscribe(items => {
      this.tags = [];
      for ( let i = 0; i < items.length; i++) {
        const itemAux = new Tag(0, '');
        itemAux.id = items[i].id;
        itemAux.nombre = items[i].nombre;
        this.tags.push(itemAux);
      }
    });
  }

  autocompleListFormatter = (data: any) => {
    const selected = this.listaTags.filter((item) => item.nombre === data.nombre).length === 1;
    let html = `<span>${data.nombre}`;
    if (selected === true) {
      html += `<span class='fa fa-check' style='color:green;'></span>`
    }
    html += `</span>`
    return this._sanitizer.bypassSecurityTrustHtml(html);
  }
}
