import { Component, ViewEncapsulation } from '@angular/core';
import { Router } from '@angular/router';
import { FormGroup, FormControl, AbstractControl, FormBuilder, Validators} from '@angular/forms';
import { UserServices } from '../../resources/users.service';
import {Sha256} from "sha256";
@Component({
  selector: 'az-login',
  encapsulation: ViewEncapsulation.None,
  providers: [],
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent {
  public router: Router;
  public form: FormGroup;
  public username: AbstractControl;
  public password: AbstractControl;
  public error: string;
  public loading: boolean = false;

  constructor(router: Router, fb: FormBuilder, private _usersService: UserServices) {
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
      //  let credenciales = {
      //    "usuario":this.username.value,
      //    "clave": Sha256(this.password.value)
      //  }
      let credenciales = {
        "usuario": this.username.value,
        "clave": this.password.value
      }
      this.loading = true;
      this._usersService.login(credenciales, (result) => {
        this.loading = false;

        if (result["result"] == "ok") {

          this._usersService.setCurrent(result["user"]);

          this.router.navigate(['pages/dashboard']);
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
