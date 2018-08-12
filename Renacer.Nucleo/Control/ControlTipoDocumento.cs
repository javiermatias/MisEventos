using Renacer.Nucleo.Entidades;
using Renacer.Nucleo.Servicio;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;

namespace Renacer.Nucleo.Control
{
    public class ControlTipoDocumento
    {
        private static ControlTipoDocumento control;

        private ControlTipoDocumento() { }

        /// <summary>
        /// Metodo para devolver una instancia unica de la Clase.
        /// </summary>
        /// <returns></returns>
        public static ControlTipoDocumento devolverInstacia()
        {
            if (control == null)
                control = new ControlTipoDocumento();
            return control;
        }

        /// <summary>
        /// Metodo utilizado para Insertar un nuevo TipoDocumento.
        /// </summary>
        /// <param name="TipoDocumento"></param>
        public void grabar(TipoDocumento TipoDocumento)
        {
            try
            {
                var errores = this.validar(TipoDocumento);
                if (errores.Count > 0)
                {
                    throw new UsuarioException(errores);
                }

                using (var db = new ModeloRenacer())
                {
                    db.tipoDocumento.AddOrUpdate(TipoDocumento);
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


        /// var item = (from i in db.TipoDocumento
        ///             where i.id.Equals(id)
        //              select i).FirstOrDefault();
        /// 
        /// 
        /// SELECT * FROM TipoDocumento WHERE id = 1;
        public TipoDocumento devolver(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.tipoDocumento.Where(x => x.id.Equals(id)).FirstOrDefault();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }

        /// <summary>
        /// Metodo utilizado para devolver todos los TipoDocumento
        /// SELECT * FROM TipoDocumento
        /// </summary>
        /// <returns></returns>
        public List<TipoDocumento> devolverTodos()
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.tipoDocumento.ToList();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }

        /// <summary>
        /// Metodo utilizado para eliminar un TipoDocumento.
        /// TODO: El metodo se tiene que cambiar para actualizar un atributo del TipoDocumento 
        /// para ver si esta eliminado o no, no se eliminan datos.
        /// </summary>
        public void eliminar(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    db.tipoDocumento.Remove(db.tipoDocumento.Where(x => x.id.Equals(id)).FirstOrDefault());
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
        }


        private List<string> validar(TipoDocumento TipoDocumento)
        {
            var errores = new List<string>();

            if (TipoDocumento == null)
            {
                errores.Add("No se informo el item");
            }

            if (TipoDocumento != null && string.IsNullOrEmpty(TipoDocumento.nombre))
            {
                errores.Add("No se ingreso el nombre");
            }

            return errores;
        }
    }
}
