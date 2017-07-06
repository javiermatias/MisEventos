export class Variables {
  public urlBase:string = "http://localhost:4200/api/";

  constructor(){
    this.urlBase = window.location.origin + "/api/"
  }

}
