import { Component, OnInit } from '@angular/core';
import { FormGroup } from '@angular/forms';
import { Usuario, UserServices } from '../../resources/users.service';
import { Contacto } from "../../resources/socio.service";
import { TipoDocumento } from '../../resources/tipo-documento.service';
import { RolServices, Rol } from '../../resources/rol.service';
import { ToastrService } from 'ngx-toastr';
import { PersonaServices } from '../../resources/persona.service';
// import { RolesEnum } from '../utils/enumerados'; // TODO: hay que actualizar a typescript 2.4 minimo para usar esto
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
  public contactoReadOnly = false;

  /**
   * Arreglo de booleanos que indica si el usuario encontrado tiene el rol del arreglo roles (mismo índice)
   * @type {boolean[]}
   * @memberof UsuarioComponent
   */
  public rolesAsignado: boolean[];
  contacto: any;
  constructor(private _userService: UserServices, private _rolService: RolServices, private mensajeServ: ToastrService, private _personaService: PersonaServices) { }
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
      this.limpiarForm(false);
      this._userService.getUsuario({ tipoDni: this.tipoDoc.id, dni: Number(this.nroDocumento) }, (user: any) => {
        this._usuario = user;
        this.rolesAsignado = [];
        const rolesUsuario: Rol[] = this._usuario.roles;
        for (let i = 0; i < this.roles.length; i++) {
          this.roles[i].asignado = rolesUsuario.some((rolUser: Rol) => { return this.roles[i].rol.id === rolUser.id; });

          if (this.roles[i].rol.nombre === "Socio" && this.roles[i].asignado) { // si ya tenia asignado el rol de socio
            this.mostrarContacto = true;
            this.contactoReadOnly = true;
            this.contacto = { id: 1, nombre: 'Contacto hardcodeado', apellido: 'apellido contacto', telefono: '4616963', relacion: 'Hijo'}
            // this.contacto = this._usuario.persona.contacto; // TODO: descomentar esto para quitar el hardcodeo del renglon anterior (borrar linea anterior cuando esta funcione)
          }
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
  limpiarForm(limpiarBuscador: boolean = true) {
    if (limpiarBuscador) {
      this.nroDocumento = null;
      this.mostrarContacto = false;
    }
    this.contacto = new Contacto();
    this._usuario = {
      id: 0,

      persona: {
        nombre: '',
        apellido: '',
        contacto: this.contacto
      },
    }
  }
  saveItem(item) {
    if (this.tieneAsignadoSocio()) {
      item.persona.contacto = this.contacto;  
      this._personaService.save(item.persona, (resp: any) => {
        this.actualizarUsuario(item);
      })
    } else {
      this.actualizarUsuario(item);
    } 
  }
  private actualizarUsuario(item) {
          this._userService.save(item, (resp: any) => {
            
            this.limpiarForm();
            this.mensajeServ.success('se han guardado los cambios!', 'Aviso!');
          })

  }
  private tieneAsignadoSocio(): boolean {
    let indiceSocio = this.roles.findIndex(item => { return item.rol.nombre === 'Socio';});
    return this.roles[indiceSocio].asignado;
  }
  cambiaAsignacion(activa: boolean, index: number) {
    this.roles[index].asignado = activa;
    if (this.roles[index].rol.nombre === "Socio") {
      this.mostrarContacto = activa;
    }
  }
}
