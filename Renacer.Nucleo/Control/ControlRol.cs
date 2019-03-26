using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Renacer.Nucleo.Entidades;
using Renacer.Nucleo.Servicio;

namespace Renacer.Nucleo.Control
{
    public class ControlRol
    {
        private static ControlRol control;

        private ControlRol() { }

        /// <summary>
        /// Metodo para devolver una instancia unica de la Clase.
        /// </summary>
        /// <returns></returns>
        public static ControlRol devolverInstacia()
        {
            if (control == null)
                control = new ControlRol();
            return control;
        }

        /// <summary>
        /// Metodo utilizado para Insertar un nuevo Rol.
        /// </summary>
        /// <param name="Rol"></param>
        public void grabar(Rol Rol)
        {
            try
            {
                var errores = this.validar(Rol);
                if (errores.Count > 0)
                {
                    throw new UsuarioException(errores);
                }

                using (var db = new ModeloRenacer())
                {
                    db.rol.AddOrUpdate(Rol);
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


        /// var item = (from i in db.Rol
        ///             where i.id.Equals(id)
        //              select i).FirstOrDefault();
        /// 
        /// 
        /// SELECT * FROM Rol WHERE id = 1;
        public Rol devolver(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.rol.Where(x => x.id.Equals(id)).FirstOrDefault();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }

        /// <summary>
        /// Metodo utilizado para devolver todos los Rol
        /// SELECT * FROM Rol
        /// </summary>
        /// <returns></returns>
        public List<Rol> devolverTodos()
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.rol.Include("permisos").ToList();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }

        /// <summary>
        /// Metodo utilizado para eliminar un Rol.
        /// TODO: El metodo se tiene que cambiar para actualizar un atributo del Rol 
        /// para ver si esta eliminado o no, no se eliminan datos.
        /// </summary>
        public void eliminar(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    db.rol.Remove(db.rol.Where(x => x.id.Equals(id)).FirstOrDefault());
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
        }


        private List<string> validar(Rol Rol)
        {
            var errores = new List<string>();

            if (Rol == null)
            {
                errores.Add("No se informó el ítem");
            }

            if (Rol != null && string.IsNullOrEmpty(Rol.nombre))
            {
                errores.Add("No se ingresó el nombre");
            }

            return errores;
        }
    }
}
