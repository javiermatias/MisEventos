import { Injectable } from '@angular/core';
import { menuItems } from './menu';
import { itemsAdmin } from './menuAdmin';
import { itemsSocio } from './menuSocio';
import { itemsResponsable } from './menuResponsable';
import { itemsSecretario } from './menuSecretario';

@Injectable()
export class MenuService {

  public getMenuItems(userType:string):Array<Object> {
    let menuItemsSelected;

    switch(userType){
      case "ADMIN": menuItemsSelected = itemsAdmin;break;
      case "SECRETARIO": menuItemsSelected = itemsSecretario;break;
      case "SOCIO": menuItemsSelected = itemsSocio;break;
      case "ENCARGADO": menuItemsSelected = itemsResponsable;break;
      case "DASH": menuItemsSelected = menuItems;break;
      default: menuItemsSelected = menuItems;break;
    }
    return menuItemsSelected;
    //return menuItemsAdmin;
  }

}
