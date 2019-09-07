using MySql.Data.MySqlClient;
using Renacer.Nucleo.Entidades;
using Renacer.Nucleo.Servicio;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Security.Principal;
using System.Threading.Tasks;

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
        public static ControlUsuario devolverInstancia()
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
        public Usuario devolver(string usuario, string clave)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    

                    Usuario _usuario = db.usuario.ToList().
                    Where(x => x.usuario.Equals(usuario) && x.clave.Equals(clave)).FirstOrDefault();

                    //var roles = db.Database
                    //    .SqlQuery<Rol>("Select rol.* from rol,usuariorols where usuariorols.Rol_id = rol.id and usuariorols.Usuario_id = @id", new MySqlParameter("@id", _usuario.id));

                    //foreach (var item in roles)
                    //{
                    //    listroles.Add(item);
                    //}
                   // _usuario.roles = listroles;

                    return _usuario;
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }
        /// SELECT * FROM Usuario WHERE id = 1;
        public Usuario devolver(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.usuario
                        .Where(x => x.id.Equals(id)).FirstOrDefault();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }



        public Usuario devolverPorToken(string token)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    var userLog = db.usuario.
                        Where(x => x.token.Equals(token)).FirstOrDefault();

                    userLog.clave = "";
                    if (!System.IO.File.Exists(userLog.imagen)) userLog.imagen = "";

                    return userLog;
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;

        }

        public Usuario devolverPorUsuario(string usuario)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    var userLog = db.usuario.
                        Where(x => x.usuario.Equals(usuario)).FirstOrDefault();
                    
                    if (!System.IO.File.Exists(userLog.imagen)) userLog.imagen = "";

                    return userLog;
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
        public Usuario devolverTodos(int tipoDni, string dni)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    //var usuario = db.usuario.Include("persona").Include("roles").Where(user => user.persona.idTipoDoc == tipoDni && user.persona.nroDocumento ==dni).FirstOrDefault();

                 

                    return null;
                   
                    //.Where(x => x.id.Equals(id)).FirstOrDefault();
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
