// TODO: Editar esto porque es el login original
import { Component, ViewEncapsulation } from '@angular/core';
import { Router } from '@angular/router';
import { FormGroup, FormControl, AbstractControl, FormBuilder, Validators, EmailValidator} from '@angular/forms';
import { UserServices } from '../../../servicios/users.service';
// import * as shajs from 'sha.js';

@Component({
  selector: 'az-login',
  encapsulation: ViewEncapsulation.None,
  providers: [],
  templateUrl: './login.component.html'
})
export class LoginComponent {
  public router: Router;
  public form: FormGroup;
  public username: AbstractControl;
  public password: AbstractControl;
  public error: string;
  public loading = false;
public recuperar_contrasenia = false;
public email: string;
public emailEnviado = false;

  constructor(router: Router, fb: FormBuilder, private _usersService: UserServices) {
    // constructor(router:Router, fb:FormBuilder,private _usersService:UserServices) {
    this.router = router;
    this.form = fb.group({
      'username': ['', Validators.compose([Validators.required, Validators.required])],
      'password': ['', Validators.compose([Validators.required, Validators.minLength(6)])]
    });

    this.username = this.form.controls['username'];
    this.password = this.form.controls['password'];
  }

  public enviarEmail() {
      const emailRegexp = /[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$/;
      if (this.email && !emailRegexp.test(this.email)) {
        this.error = 'Email invalido.';
      } else {
            this._usersService.enviarEmailRecuperacion(this.email).subscribe(result => {
               this.emailEnviado = true;
            },
          error => {
            this.error = 'Error al enviar el email.';
          });
      }
  }
  public volverAtras(){  this.recuperar_contrasenia = false; }

  public onSubmit(values: Object): void {
    if (this.form.valid) {
     // TODO: volver a codificar una vez resuelto la codificacion al crear usuario
      // "clave": shajs('sha256').update(this.password.value).digest('hex')
      this.loading = true;
      this._usersService.setCurrent(undefined);

      /* const pass = shajs('sha256').update(this.password.value).digest('hex') */
      this._usersService.login(this.username.value, this.password.value).subscribe(
        result => {
          if (result['result'] === 'ok') {
            this._usersService.setCurrent(result['user']);
            this.router.navigate(['pages/dashboard']);
          } else {
            this.error = 'Error en el usuario o contraseña';
          }
        },
        error => {
          console.log(error);
          this.error = 'Error en el usuario o contraseña';
        },
        () => {
          this.loading = false; });
    }
  }

}


export function emailValidator(control: FormControl): { [key: string]: any } {
  var emailRegexp = /[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$/;
  if (control.value && !emailRegexp.test(control.value)) {
    return { invalidEmail: true };
  }
}
