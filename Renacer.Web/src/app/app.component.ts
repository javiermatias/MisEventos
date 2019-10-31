import { Component, ViewEncapsulation } from '@angular/core';

@Component({
  selector: 'az-root',
  encapsulation: ViewEncapsulation.None,
  template: `<router-outlet></router-outlet>  <app-csv-wrapper> </app-csv-wrapper>`,
  styleUrls: ['./app.component.scss']
})

export class AppComponent {


  constructor() {}



}
