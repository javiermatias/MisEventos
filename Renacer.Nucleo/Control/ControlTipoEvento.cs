

using Renacer.Nucleo.Entidades;
using Renacer.Nucleo.Servicio;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;

namespace Renacer.Nucleo.Control
{
    public class ControlTipoEvento
    {
        private static ControlTipoEvento control;

        private ControlTipoEvento() { }

        /// <summary>
        /// Metodo para devolver una instancia unica de la Clase.
        /// </summary>
        /// <returns></returns>
        public static ControlTipoEvento devolverInstacia()
        {
            if (control == null)
                control = new ControlTipoEvento();
            return control;
        }

        /// <summary>
        /// Metodo utilizado para Insertar un nuevo tipoEvento.
        /// </summary>
        /// <param name="tipoEvento"></param>
        public void grabar(TipoEvento tipoEvento)
        {
            try
            {
                var errores = this.validar(tipoEvento);
                if (errores.Count > 0)
                {
                    throw new UsuarioException(errores);
                }

                using (var db = new ModeloRenacer())
                {
                    db.tipoEvento.AddOrUpdate(tipoEvento);
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

        /// var item = (from i in db.tipoEvento
        ///             where i.id.Equals(id)
        //              select i).FirstOrDefault();
        /// 
        /// 
        /// SELECT * FROM TipoEvento WHERE id = 1;
        public TipoEvento devolver(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.tipoEvento.Where(x => x.id.Equals(id)).FirstOrDefault();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }

        /// <summary>
        /// Metodo utilizado para devolver todos los TipoEvento
        /// SELECT * FROM TipoEvento
        /// </summary>
        /// <returns></returns>
        public List<TipoEvento> devolverTodos()
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.tipoEvento.ToList();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }

        /// <summary>
        /// Metodo utilizado para eliminar un tipoEvento.
        /// TODO: El metodo se tiene que cambiar para actualizar un atributo del tipoEvento 
        /// para ver si esta eliminado o no, no se eliminan datos.
        /// </summary>
        public void eliminar(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    db.tipoEvento.Remove(db.tipoEvento.Where(x => x.id.Equals(id)).FirstOrDefault());
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
        }


        private List<string> validar(TipoEvento tipoEvento)
        {
            var errores = new List<string>();

            if (tipoEvento == null)
            {
                errores.Add("No se informo el tipoEvento");
            }

            if (tipoEvento != null && string.IsNullOrEmpty(tipoEvento.nombre))
            {
                errores.Add("No se ingreso el nombre del tipoEvento");
            }

            return errores;
        }
    }
}
