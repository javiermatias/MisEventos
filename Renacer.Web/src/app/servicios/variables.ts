export class Variables {
  public urlBase = 'http://localhost:4200/api/';

  constructor() {
    if (window.location.href.toString().includes('localhost')) {
      this.urlBase = 'http://localhost:6913/api/';
    } else {
      this.urlBase = 'http://qwaugusto-001-site5.htempurl.com/api/'; }

    if (window['__entorno'] != null) { this.urlBase = window['__entorno']}
      window['__entorno'] = this.urlBase;
  }

}
