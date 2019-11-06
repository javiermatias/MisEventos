import {Injectable} from '@angular/core';
import {HttpEvent, HttpInterceptor, HttpHandler, HttpRequest} from '@angular/common/http';
import { Observable } from "rxjs";
import { HTTP_INTERCEPTORS } from "@angular/common/http";

@Injectable()
export class AuthInterceptor implements HttpInterceptor {
  intercept(req: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>> {
    let headers =req.headers;

    if(sessionStorage['token']){
      headers = req.headers.set(
        'Authorization', `Basic ${sessionStorage['token']}`
      )
    }
    const changedReq = req.clone({
      headers: headers
    });

    return next.handle(changedReq);
  }
}

export const AuthInterceptorProvider = {
  provide: HTTP_INTERCEPTORS,
  useClass: AuthInterceptor,
  multi: true,
};


