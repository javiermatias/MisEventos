

using Renacer.Nucleo.Entidades;
using Renacer.Nucleo.Servicio;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Migrations;
using System.Linq;

namespace Renacer.Nucleo.Control
{
    public class ControlAsistencia
    {
        private static ControlAsistencia control;

        private ControlAsistencia() { }

        /// <summary>
        /// Metodo para devolver una instancia unica de la Clase.
        /// </summary>
        /// <returns></returns>
        public static ControlAsistencia devolverInstacia()
        {
            if (control == null)
                control = new ControlAsistencia();
            return control;
        }

        /// <summary>
        /// Metodo utilizado para Insertar un nuevo asistencia.
        /// </summary>
        /// <param name="asistencia"></param>
        public void grabar(Asistencia asistencia)
        {
            try
            {
                var errores = this.validar(asistencia);
                if (errores.Count > 0)
                    throw new UsuarioException(errores);

                //if (asistencia.id == 0) asistencia.fechaCreacion = DateTime.Now;
                //if (asistencia.id > 0) asistencia.fechaModificacion = DateTime.Now;

                using (var db = new ModeloRenacer())
                {
                    //Socio[] listaSocios = new Socio[asistencia.listaSocios.Count];
                    //asistencia.listaSocios.CopyTo(listaSocios);
                    //asistencia.listaSocios.RemoveAll(soc => true);

                    db.asistencia.AddOrUpdate(asistencia);
                    db.SaveChanges();

                   // asistencia = db.asistencia.Include("listaSocios").Single(a => a.id == asistencia.id);
                    //ControlSocio.devolverInstancia().actualizarListaDeSocios(db, listaSocios, asistencia.listaSocios);
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


        /// var item = (from i in db.asistencia
        ///             where i.id.Equals(id)
        //              select i).FirstOrDefault();
        /// 
        /// 
        /// SELECT * FROM Asistencia WHERE id = 1;
        public Asistencia devolver(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    var item = db.asistencia.Include("listaSocios").Where(x => x.id.Equals(id)).FirstOrDefault();
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
        /// Metodo utilizado para devolver todos los Asistencia
        /// SELECT * FROM Asistencia
        /// </summary>
        /// <returns></returns>
        public List<Asistencia> devolverTodos()
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.asistencia.ToList();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }

        /// <summary>
        /// Metodo utilizado para eliminar un asistencia.
        /// TODO: El metodo se tiene que cambiar para actualizar un atributo del asistencia 
        /// para ver si esta eliminado o no, no se eliminan datos.
        /// </summary>
        public void eliminar(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    db.asistencia.Remove(db.asistencia.Where(x => x.id.Equals(id)).FirstOrDefault());
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
        }


        private List<string> validar(Asistencia asistencia)
        {
            var errores = new List<string>();

            if (asistencia == null)
            {
                errores.Add("No se informo el espacio comun");
            }

            return errores;
        }
    }
}
