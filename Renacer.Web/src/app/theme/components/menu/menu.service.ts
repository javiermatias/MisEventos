import { Injectable } from '@angular/core';
import { menuItems } from './menu';
import { menuItems as menuItemsAdmin } from './menuAdmin';

@Injectable()
export class MenuService {

  public getMenuItems(userType:string):Array<Object> {
    let menuItemsSelected;

    switch(userType){
      case "Admin": menuItemsSelected = menuItemsAdmin;break;
      default: menuItemsSelected = menuItems;break;
    }
    //return menuItemsSelected;
    return menuItems;
  }

}
