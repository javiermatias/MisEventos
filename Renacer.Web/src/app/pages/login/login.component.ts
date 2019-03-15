import { Component, ViewEncapsulation } from '@angular/core';
import { Router } from '@angular/router';
import { FormGroup, FormControl, AbstractControl, FormBuilder, Validators} from '@angular/forms';
import { UserServices } from '../../resources/users.service';
import { RolServices, Rol } from '../../resources/rol.service';
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


  /**
   * Son los perfiles del usuario logueado
   * @type {Rol[]}
   * @memberof LoginComponent
   */
  public perfilesUsuario: Rol[] = [];
  constructor(router: Router, fb: FormBuilder, private _usersService: UserServices, private _perfilesService: RolServices) {
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
      let credenciales = {
        "usuario": this.username.value,
        "clave": this.password.value
      }
      this.loading = true;
      this._usersService.login(credenciales, (result) => {
        this.loading = false;

        if (result["result"] == "ok") {

          this._usersService.setCurrent(result["user"]);

          // TODO: conseguir el id del usuario para buscarlo en la tabla perfilesXUsuario
          this._perfilesService.query({id: result["user"].id}, (res: Rol[]) => {
              this.perfilesUsuario = res;
              if (this.perfilesUsuario.length > 1) {
                this.router.navigate(['pages/dashboard']);
              }
          });


        } else {
          this.error = "Error en el usuario o contraseña";
        }
      });
    }
  }
}

function seleccionPerfil(seleccion: Rol) {
    // TODO: aca se debe indicar al jwt que ingreso con el perfil seleccion
    
    this.router.navigate(['pages/dashboard']);
}

export function emailValidator(control: FormControl): { [key: string]: any } {
  var emailRegexp = /[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$/;
  if (control.value && !emailRegexp.test(control.value)) {
    return { invalidEmail: true };
  }
}
