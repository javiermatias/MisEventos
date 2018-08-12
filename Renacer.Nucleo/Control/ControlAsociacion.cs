

using Renacer.Nucleo.Entidades;
using Renacer.Nucleo.Servicio;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;

namespace Renacer.Nucleo.Control
{
    public class ControlAsociacion
    {
        private static ControlAsociacion control;

        private ControlAsociacion() { }

        /// <summary>
        /// Metodo para devolver una instancia unica de la Clase.
        /// </summary>
        /// <returns></returns>
        public static ControlAsociacion devolverInstancia()
        {
            if (control == null)
                control = new ControlAsociacion();
            return control;
        }

        /// <summary>
        /// Metodo utilizado para Insertar un nuevo asociacion.
        /// </summary>
        /// <param name="asociacion"></param>
        public void grabar(Asociacion asociacion)
        {
            try
            {
                var errores = this.validar(asociacion);
                if (errores.Count > 0)
                {
                    throw new UsuarioException(errores);
                }

                if (asociacion.id == 0) asociacion.fechaCreacion = DateTime.Now;
                if (asociacion.id > 0) asociacion.fechaModificacion = DateTime.Now;

                using (var db = new ModeloRenacer())
                {
                    db.asociacion.AddOrUpdate(asociacion);
                    db.SaveChanges();
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


        /// var item = (from i in db.asociacion
        ///             where i.id.Equals(id)
        //              select i).FirstOrDefault();
        /// 
        /// 
        /// SELECT * FROM Asociacion WHERE id = 1;
        public Asociacion devolver(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    var item = db.asociacion.Include("listaSocios").Where(x => x.id.Equals(id)).FirstOrDefault();
                    //item.listaSocios = db.socio.Where(x => x.listaEspacios.Any(xy => xy.id.Equals(id))).ToList();
                    return item;
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }

        /// <summary>
        /// Metodo utilizado para devolver todos los Asociacion
        /// SELECT * FROM Asociacion
        /// </summary>
        /// <returns></returns>
        public List<Asociacion> devolverTodos()
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.asociacion.ToList();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }

        /// <summary>
        /// Metodo utilizado para eliminar un asociacion.
        /// TODO: El metodo se tiene que cambiar para actualizar un atributo del asociacion 
        /// para ver si esta eliminado o no, no se eliminan datos.
        /// </summary>
        public void eliminar(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    db.asociacion.Remove(db.asociacion.Where(x => x.id.Equals(id)).FirstOrDefault());
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
        }


        private List<string> validar(Asociacion asociacion)
        {
            var errores = new List<string>();

            if (asociacion == null)
            {
                errores.Add("No se informo el espacio comun");
            }

            return errores;
        }
    }
}
