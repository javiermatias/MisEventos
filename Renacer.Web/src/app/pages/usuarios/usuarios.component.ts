import { Component, OnInit } from '@angular/core';
import { FormGroup } from '@angular/forms';
import { Usuario, UserServices } from '../../resources/users.service';
import { Contacto } from "../../resources/socio.service";
import { TipoDocumento } from '../../resources/tipo-documento.service';
import { RolServices, Rol } from '../../resources/rol.service';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'az-usuarios',
  templateUrl: './usuarios.component.html'
})
export class UsuarioComponent implements OnInit {
  public _usuario: any;
  public nroDocumento: number;
  public tipoDoc: any;
  public roles: { rol: Rol, asignado: boolean }[];
  public mostrarContacto: boolean = false;
  /**
   * Arreglo de booleanos que indica si el usuario encontrado tiene el rol del arreglo roles (mismo índice)
   * @type {boolean[]}
   * @memberof UsuarioComponent
   */
  public rolesAsignado: boolean[];
  contacto: Contacto;
  constructor(private _userService: UserServices, private _rolService: RolServices, private mensajeServ: ToastrService) { }
  ngOnInit() {
    this.contacto = new Contacto();
    this.limpiarForm();
    this._rolService.query({}, (resp: Rol[]) => {
      // this.roles = resp; 
      this.roles = [];
      resp.forEach((rol: Rol) => { this.roles.push({ rol: rol, asignado: false }); })
    });
  }
  onSubmit(myForm: FormGroup) {
    // let newSocio = Object.assign({}, this._socio);
    // this._socio = new Socio(0,"","","");
    this._usuario.roles = [];
    this.roles.forEach((item: { rol: Rol, asignado: boolean }) => {
      if (item.asignado) {
        this._usuario.roles.push(item.rol);
      }
    });
    this.saveItem(this._usuario);
    myForm.reset();
  }
  buscarUsuario() {
    if (this.tipoDoc && this.nroDocumento) {
      this._userService.getUsuario({ tipoDni: this.tipoDoc.id, dni: Number(this.nroDocumento) }, (user: any) => {
        this._usuario = user;
        this.rolesAsignado = [];
        const rolesUsuario: Rol[] = this._usuario.roles;
        for (let i = 0; i < this.roles.length; i++) {
          this.roles[i].asignado = rolesUsuario.some((rolUser: Rol) => { return this.roles[i].rol.id === rolUser.id; });
        }
      })
    }
  }

  seleccionTipoDoc(tipoDoc: TipoDocumento) {
    this.tipoDoc = tipoDoc;
  }
  tieneRol(i: number) {
    return this.roles[i].asignado;
  }
  limpiarForm() {
    this._usuario = {
      id: 0,

      persona: {
        nombre: '',
        apellido: '', // TODO: hay que traer el contacto, ver como viene, como cargarlo. Tengo que hacer el if para ver si selecciono el rol asi muestro el formulario. Si venia, traerlo cargado pero grisado y tenerlo en cache
        contacto: new Contacto()
      },
    }
  }
  saveItem(item) {
    this._userService.update(item, (resp: any) => {
      this.limpiarForm();
      this.mensajeServ.success('se han guardado los cambios!', 'Aviso!');
    }
    );
  }
  cambiaAsignacion(activa: boolean, index: number, rol: string) {
    this.roles[index].asignado = activa;
    console.log(rol);
    if (rol == "Socio") {
      if (activa == true) {
        this.mostrarContacto = true;
        console.log(this.mostrarContacto.valueOf());
      } else {
        this.mostrarContacto = false;
        console.log(this.mostrarContacto.valueOf());
      }
    }
  }
}
