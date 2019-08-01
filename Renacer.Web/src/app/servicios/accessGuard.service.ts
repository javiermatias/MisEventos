import { Injectable } from "@angular/core";
import { CanActivate, ActivatedRouteSnapshot, Router } from "@angular/router";
import { Observable } from "rxjs";


@Injectable()
export class AccessGuard implements CanActivate {

    constructor(private router: Router) { }
    canActivate(route: ActivatedRouteSnapshot): Observable<boolean> | Promise<boolean> | boolean {
        // const requiereRol = route.data.requiereRol || true; // por defecto necesita estar logueado
        // if (requiereRol) {
            const rol = JSON.parse(localStorage.getItem('rol'));
            if (rol !== null && rol !== undefined) {
                return true
            } else {
                this.router.navigate(['sesion']);
                return false;
            }
        // }
    }
}