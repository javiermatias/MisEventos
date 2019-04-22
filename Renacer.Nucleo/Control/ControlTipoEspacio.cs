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
    public class ControlTipoEspacio
    {
         private static ControlTipoEspacio control;

        private ControlTipoEspacio() { }

        /// <summary>
        /// Metodo para devolver una instancia unica de la Clase.
        /// </summary>
        /// <returns></returns>
        public static ControlTipoEspacio devolverInstacia()
        {
            if (control == null)
                control = new ControlTipoEspacio();
            return control;
        }

        /// <summary>
        /// Metodo utilizado para Insertar un nuevo TipoEspacio.
        /// </summary>
        /// <param name="TipoEspacio"></param>
        public void grabar(TipoEspacio TipoEspacio)
        {
            try
            {
                var errores = this.validar(TipoEspacio);
                if (errores.Count > 0)
                {
                    throw new UsuarioException(errores);
                }

                using (var db = new ModeloRenacer())
                {
                    db.tipoEspacio.AddOrUpdate(TipoEspacio);
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


        /// var item = (from i in db.TipoEspacio
        ///             where i.id.Equals(id)
        //              select i).FirstOrDefault();
        /// 
        /// 
        /// SELECT * FROM TipoEspacio WHERE id = 1;
        public TipoEspacio devolver(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.tipoEspacio.Where(x => x.id.Equals(id)).FirstOrDefault();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }

        /// <summary>
        /// Metodo utilizado para devolver todos los TipoEspacio
        /// SELECT * FROM TipoEspacio
        /// </summary>
        /// <returns></returns>
        public List<TipoEspacio> devolverTodos()
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.tipoEspacio.ToList();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }

        /// <summary>
        /// Metodo utilizado para eliminar un TipoEspacio.
        /// TODO: El metodo se tiene que cambiar para actualizar un atributo del TipoEspacio 
        /// para ver si esta eliminado o no, no se eliminan datos.
        /// </summary>
        public void eliminar(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    db.tipoEspacio.Remove(db.tipoEspacio.Where(x => x.id.Equals(id)).FirstOrDefault());
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
        }


        private List<string> validar(TipoEspacio TipoEspacio)
        {
            var errores = new List<string>();

            if (TipoEspacio == null)
            {
                errores.Add("No se informo el item");
            }

            if (TipoEspacio != null && string.IsNullOrEmpty(TipoEspacio.nombre))
            {
                errores.Add("No se ingreso el nombre");
            }

            return errores;
        }
    }
}
