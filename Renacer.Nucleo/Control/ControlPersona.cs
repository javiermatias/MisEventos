using Renacer.Nucleo.Entidades;
using Renacer.Nucleo.Servicio;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Nucleo.Control
{
    public class ControlPersona
    {
        private static ControlPersona control;

        private ControlPersona() { }

        /// <summary>
        /// Metodo para devolver una instancia unica de la Clase.
        /// </summary>
        /// <returns></returns>
        public static ControlPersona devolverInstancia()
        {
            if (control == null)
                control = new ControlPersona();
            return control;
        }

        /// <summary>
        /// Metodo utilizado para devolver todos los Persona
        /// SELECT * FROM Persona
        /// </summary>
        /// <returns></returns>
        public List<Persona> devolverTodos(int page, int limit, string search)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    if (search != null)
                        return db.persona.Where(x => x.fechaBaja == null && x.nombre.Contains(@search)).ToList();
                    //return db.persona.Where(x=> x.nombre.Contains(@search)).Skip(page*limit).Take(limit).ToList();
                    else
                        return db.persona.Include("tipoDoc").ToList();

                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }



        public Persona devolver(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    var item = db.persona.
                        Include("tipoDoc").
                        Include("domicilio").
                        Include("contacto").
                        Where(x => x.id.Equals(id)).FirstOrDefault();

                    //item.listaTags = db.tag.Where(x => x.listaPersonas.Any(xy => xy.id.Equals(id))).ToList();
                    return item;
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }

        //Graba la persona si el id = 0, le genera un user con las dos primeras letras del nombre
        //+ su apellido, en persona se le agrega el rol del que crea esa persona

        public int grabar(Persona _persona)
        {
            try
            {
                Usuario usuario = new Usuario();
                List<Rol> roles = new List<Rol>();
                var errores = this.validar(_persona);
                if (errores.Count > 0)
                {
                    throw new UsuarioException(errores);
                }

                using (var db = new ModeloRenacer())
                {
                    TipoDocumento tp = ControlTipoDocumento.devolverInstacia().devolverTodos().Where(r => r.id == (int)_persona.idTipoDoc).FirstOrDefault();
                   
                    // Tag[] listaTags = new Tag[_persona.listaTags.Count];
                    //_persona.listaTags.CopyTo(listaTags,0);
                    //_persona.listaTags.RemoveAll(tag => true);
                    if (_persona.domicilio != null)
                    {
                        if (_persona.domicilio.id == 0) db.Entry(_persona.domicilio).State = System.Data.Entity.EntityState.Added;
                        if (_persona.domicilio.id > 0) db.Entry(_persona.domicilio).State = System.Data.Entity.EntityState.Modified;
                    }
                    if (_persona.contacto != null)
                    {
                        if (_persona.contacto.id == 0) {
                            Contacto contacto = db.contacto.Add(_persona.contacto);
                            _persona.contacto = contacto;
                            _persona.idContacto = contacto.id;
                        }
                        
                        if (_persona.contacto.id > 0) {
                            db.Entry(_persona.contacto).State = System.Data.Entity.EntityState.Modified; }
                    }

                    db.persona.AddOrUpdate(_persona);

                    if (_persona.id==0)
                    {
                        Rol rol = ControlRol.devolverInstacia().devolverTodos().Where(r => r.nombre== _persona.rol).FirstOrDefault();
                        roles.Add(rol);
                        usuario.persona = _persona;
                        usuario.nombre = _persona.nombre;
                        usuario.usuario = _persona.nombre.Substring(0,2) + _persona.apellido + _persona.nroDocumento.Substring(_persona.nroDocumento.Length - 4, 3);
                        usuario.clave = _persona.nroDocumento;
                        usuario.rol = _persona.rol;
                        usuario.fechaCreacion = DateTime.Now;
                        usuario.email = _persona.email;
                        usuario.roles = roles;
                        ControlUsuario.devolverInstancia().grabar(usuario);
                    
                    }



                   

                   // db.Entry(_persona.tipoDoc).State = System.Data.Entity.EntityState.Unchanged;
                    db.SaveChanges();

                    //Persona personaAux = db.persona.Include("listaTags").Single(a => a.id == persona.id);
                    //ControlTag.devolverInstancia().actualizarListaDeTags(db, listaTags, personaAux.listaTags);
                    //db.SaveChanges();
                    int id = _persona.id;
                    return id;
                }
            }
            catch (UsuarioException ex)
            {
                ServicioSentry.devolverSentry().informarExcepcionUsuario(ex);
                throw ex;
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return 0;
        }


        private List<string> validar(Persona persona)
        {
            var errores = new List<string>();

            if (persona == null)
            {
                errores.Add("No se informó la persona");
            }

            if (persona != null && string.IsNullOrEmpty(persona.nombre))
            {
                errores.Add("No se ingresó el nombre de la persona");
            }

            if (persona != null && string.IsNullOrEmpty(persona.apellido))
            {
                errores.Add("No se ingresó el apellido de la persona");
            }

            return errores;
        }
    }
}
