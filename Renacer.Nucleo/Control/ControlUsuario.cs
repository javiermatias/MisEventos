using Renacer.Nucleo.Entidades;
using Renacer.Nucleo.Servicio;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;

namespace Renacer.Nucleo.Control
{
    public class ControlUsuario
    {
        private static ControlUsuario control;

        private ControlUsuario() { }

        /// <summary>
        /// Metodo para devolver una instancia unica de la Clase.
        /// </summary>
        /// <returns></returns>
        public static ControlUsuario devolverInstacia()
        {
            if (control == null)
                control = new ControlUsuario();
            return control;
        }

        /// <summary>
        /// Metodo utilizado para Insertar un nuevo Usuario.
        /// </summary>
        /// <param name="usuario"></param>
        public void grabar(Usuario usuario)
        {
            try
            {
                var errores = this.validar(usuario);
                if (errores.Count > 0)
                {
                    throw new UsuarioException(errores);
                }

                using (var db = new ModeloRenacer())
                {
                    db.usuario.AddOrUpdate(usuario);
                    db.SaveChanges();
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
        }


        /// var item = (from i in db.usuario
        ///             where i.id.Equals(id)
        //              select i).FirstOrDefault();
        /// 
        /// 
        /// SELECT * FROM Usuario WHERE id = 1;
        public Usuario devolver(string usuario,string clave)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.usuario.
                        Where(x => x.usuario.Equals(usuario) && x.clave.Equals(clave)).FirstOrDefault();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }

        /// <summary>
        /// Metodo utilizado para devolver todos los Usuario
        /// SELECT * FROM Usuario
        /// </summary>
        /// <returns></returns>
        public List<Usuario> devolverTodos()
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.usuario.ToList();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }

        /// <summary>
        /// Metodo utilizado para eliminar un usuario.
        /// TODO: El metodo se tiene que cambiar para actualizar un atributo del usuario 
        /// para ver si esta eliminado o no, no se eliminan datos.
        /// </summary>
        public void eliminar(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    db.usuario.Remove(db.usuario.Where(x => x.id.Equals(id)).FirstOrDefault());
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
        }


        private List<string> validar(Usuario usuario)
        {
            var errores = new List<string>();

            if (usuario == null)
            {
                errores.Add("No se informo el usuario");
            }

            if (usuario != null && string.IsNullOrEmpty(usuario.nombre))
            {
                errores.Add("No se ingreso el nombre del usuario");
            }

            if (usuario != null && string.IsNullOrEmpty(usuario.clave))
            {
                errores.Add("No se ingreso la clave del usuario");
            }

            return errores;
        }
    }
}
