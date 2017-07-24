

using Renacer.Nucleo.Entidades;
using Renacer.Nucleo.Servicio;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;

namespace Renacer.Nucleo.Control
{
    public class ControlEspacioComun
    {
        private static ControlEspacioComun control;

        private ControlEspacioComun() { }

        /// <summary>
        /// Metodo para devolver una instancia unica de la Clase.
        /// </summary>
        /// <returns></returns>
        public static ControlEspacioComun devolverInstacia()
        {
            if (control == null)
                control = new ControlEspacioComun();
            return control;
        }

        /// <summary>
        /// Metodo utilizado para Insertar un nuevo espacioComun.
        /// </summary>
        /// <param name="espacioComun"></param>
        public void grabar(EspacioComun espacioComun)
        {
            try
            {
                var errores = this.validar(espacioComun);
                if (errores.Count > 0)
                {
                    throw new UsuarioException(errores);
                }

                if (espacioComun.id == 0) espacioComun.fechaCreacion = DateTime.Now;
                if (espacioComun.id > 0) espacioComun.fechaModificacion = DateTime.Now;

                using (var db = new ModeloRenacer())
                {

                    db.espacioComun.AddOrUpdate(espacioComun);
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


        /// var item = (from i in db.espacioComun
        ///             where i.id.Equals(id)
        //              select i).FirstOrDefault();
        /// 
        /// 
        /// SELECT * FROM EspacioComun WHERE id = 1;
        public EspacioComun devolver(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.espacioComun.Where(x => x.id.Equals(id)).FirstOrDefault();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }

        /// <summary>
        /// Metodo utilizado para devolver todos los EspacioComun
        /// SELECT * FROM EspacioComun
        /// </summary>
        /// <returns></returns>
        public List<EspacioComun> devolverTodos()
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.espacioComun.ToList();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }

        /// <summary>
        /// Metodo utilizado para eliminar un espacioComun.
        /// TODO: El metodo se tiene que cambiar para actualizar un atributo del espacioComun 
        /// para ver si esta eliminado o no, no se eliminan datos.
        /// </summary>
        public void eliminar(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    db.espacioComun.Remove(db.espacioComun.Where(x => x.id.Equals(id)).FirstOrDefault());
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
        }


        private List<string> validar(EspacioComun espacioComun)
        {
            var errores = new List<string>();

            if (espacioComun == null)
            {
                errores.Add("No se informo el espacio comun");
            }

            if (espacioComun != null && string.IsNullOrEmpty(espacioComun.nombre))
            {
                errores.Add("No se ingreso el nombre del espacio");
            }

            return errores;
        }
    }
}
