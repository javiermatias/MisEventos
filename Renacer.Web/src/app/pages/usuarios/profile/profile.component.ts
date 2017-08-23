import { Component, OnInit } from '@angular/core';
import { Usuario,UserServices } from '../../../resources/users.service';

@Component({
  selector: 'az-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.scss']
})
export class ProfileComponent implements OnInit {

  public _item:Usuario;

  constructor(private baseServ:UserServices) {
   }

  ngOnInit() {
    this._item = new Usuario(0);
     this.baseServ.actual((item:Usuario)=> this._item = item)
  }

}
