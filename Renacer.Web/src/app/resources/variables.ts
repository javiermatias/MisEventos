export class Variables {
  public urlBase:string = "http://localhost:4200/api/";

  constructor(){
    if(window.location.href.toString().includes("localhost"))
      this.urlBase = "http://localhost:6913/api/";
    else
         this.urlBase = window.location.origin + "/api/";

    //

  }

}
