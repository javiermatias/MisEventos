// TODO: Editar esto porque es el login original
import { Component, ViewEncapsulation } from '@angular/core';
import { Router } from '@angular/router';
import { FormGroup, FormControl, AbstractControl, FormBuilder, Validators} from '@angular/forms';
import { UserServices } from '../../servicios/users.service';
import { RolServices, Rol } from '../../servicios/rol.service';
import * as shajs from 'sha.js';
@Component({
  selector: 'az-login',
  encapsulation: ViewEncapsulation.None,
  providers: [],
  templateUrl: './login.component.html',
  styleUrls: ['../sesion/sesion.component.scss']
})
export class LoginComponent {
  public router: Router;
  public form: FormGroup;
  public username: AbstractControl;
  public password: AbstractControl;
  public error: string;
  public loading: boolean = false;


  /**
   * Son los roles del usuario logueado
   * @type {Rol[]}
   * @memberof LoginPComponent
   */
  //public rolesUsuario: Rol[] = [];
  constructor(router: Router, fb: FormBuilder, private _usersService: UserServices, private _rolesService: RolServices) {
    // constructor(router:Router, fb:FormBuilder,private _usersService:UserServices) {
    this.router = router;
    this.form = fb.group({
      'username': ["", Validators.compose([Validators.required, Validators.required])],
      'password': ["", Validators.compose([Validators.required, Validators.minLength(6)])]
    });

    this.username = this.form.controls['username'];
    this.password = this.form.controls['password'];
  }

  public onSubmit(values: Object): void {
    if (this.form.valid) {
     // TODO: volver a codificar una vez resuelto la codificacion al crear usuario
      // "clave": shajs('sha256').update(this.password.value).digest('hex')
      this.loading = true;
      this._usersService.login(this.username.value,this.password.value).subscribe(result => {
        this.loading = false;

        if (result["result"] == "ok") {

          this._usersService.setCurrent(result["user"]);
          this.router.navigate(['pages/dashboard']);
/* 
          this.rolesUsuario = result["user"].roles;
          if (this.rolesUsuario && this.rolesUsuario.length === 1) { // si es mayor a 1 ya lo maneja el html
            this._rolesService.setCurrent(this.rolesUsuario[0]);
            this.router.navigate(['pages/dashboard']);
           } else {
            //this.router.navigate(['sesion/seleccionarRol']);
            this.router.navigate(['pages/dashboard']);
          }  */ 
        } else {
          this.error = "Error en el usuario o contraseña";
        }
      });
    }
  }
}


export function emailValidator(control: FormControl): { [key: string]: any } {
  var emailRegexp = /[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$/;
  if (control.value && !emailRegexp.test(control.value)) {
    return { invalidEmail: true };
  }
}
