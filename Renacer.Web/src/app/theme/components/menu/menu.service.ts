import { Injectable } from '@angular/core';
import { menuItems } from './menu';
import { itemsAdmin } from './menuAdmin';
import { itemsSocio } from './menuSocio';
import { itemsResponsable } from './menuResponsable';

@Injectable()
export class MenuService {

  public getMenuItems(userType:string):Array<Object> {
    let menuItemsSelected;

    switch(userType){
      case "admin": menuItemsSelected = itemsAdmin;break;
      case "socio": menuItemsSelected = itemsSocio;break;
      case "responsable": menuItemsSelected = itemsResponsable;break;
      default: menuItemsSelected = menuItems;break;
    }
    return menuItemsSelected;
    //return menuItemsAdmin;
  }

}
