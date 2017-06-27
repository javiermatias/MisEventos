import { Component, OnInit, ViewEncapsulation } from '@angular/core';

@Component({
  selector: 'az-drag-drop',
  encapsulation: ViewEncapsulation.None,
  templateUrl: './drag-drop.component.html',
  styleUrls: ['./drag-drop.component.scss']
})
export class DragDropComponent implements OnInit {

items = []

  constructor() { }

  ngOnInit() {
    this.items =[
      "hola ","asdasdasd","HUguito","Augusto","Mago"
    ]
  }

}
