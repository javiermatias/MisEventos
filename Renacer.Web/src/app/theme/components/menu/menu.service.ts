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
      case "Administrador": menuItemsSelected = itemsAdmin;break;
      case "Socio": menuItemsSelected = itemsSocio;break;
      case "Encargado": menuItemsSelected = itemsResponsable;break;
      default: menuItemsSelected = menuItems;break;
    }
    return menuItemsSelected;
    //return menuItemsAdmin;
  }

}
