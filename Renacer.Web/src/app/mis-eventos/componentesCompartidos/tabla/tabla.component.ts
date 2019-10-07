import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'az-tabla',
  templateUrl: './tabla.component.html',
  styleUrls: ['./tabla.component.scss']
})
export class TablaComponent implements OnInit {

  @Input() data:any[];
  @Input() config:any;

  constructor() { }

  ngOnInit() {
  
  }

}
