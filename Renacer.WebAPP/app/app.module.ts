import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

import { AppComponent }  from './app.component';
import { MdButton, MdSidenav, MdSidenavContainer, MdButtonModule, MdSidenavModule } from '@angular/material';

@NgModule({
    imports: [
        BrowserModule,
        BrowserAnimationsModule,
        MdButtonModule,
        MdSidenavModule,
    ],
  declarations: [ AppComponent ],
  bootstrap:    [ AppComponent ]
})
export class AppModule { }
