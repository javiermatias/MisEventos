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
    public class ControlRecordatorio
    {

        private static ControlRecordatorio control;

        private ControlRecordatorio() { }

        /// <summary>
        /// Metodo para devolver una instancia unica de la Clase.
        /// </summary>
        /// <returns></returns>
        public static ControlRecordatorio devolverInstacia()
        {
            if (control == null)
                control = new ControlRecordatorio();
            return control;
        }

        /// <summary>
        /// Metodo utilizado para Insertar un nuevo Matricula.
        /// </summary>
        /// <param name="Recordatorio"></param>
        public void grabar(Recordatorio Recordatorio)
        {
            try
            {
                //var errores = this.validar(Matricula);
                //if (errores.Count > 0)
                //{
                //    throw new UsuarioException(errores);
                //}

                using (var db = new ModeloRenacer())
                {
                    db.recordatorio.AddOrUpdate(Recordatorio);
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


        /// var item = (from i in db.Matricula
        ///             where i.id.Equals(id)
        //              select i).FirstOrDefault();
        /// 
        /// 
        /// SELECT * FROM Matricula WHERE id = 1;
        public Recordatorio devolver(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.recordatorio.Where(x => x.id.Equals(id)).FirstOrDefault();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }
          /// <summary>
        /// Metodo utilizado para devolver todos los Matricula
        /// SELECT * FROM Matricula
        /// </summary>
        /// <returns></returns>
        public List<Recordatorio> devolverTodos()
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.recordatorio.OrderBy(x => x.fechaRecordatorio).ToList();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }

        /// <summary>
        /// Metodo utilizado para eliminar un Matricula.
        /// TODO: El metodo se tiene que cambiar para actualizar un atributo del Matricula 
        /// para ver si esta eliminado o no, no se eliminan datos.
        /// </summary>
        public void eliminar(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    db.recordatorio.Remove(db.recordatorio.Where(x => x.id.Equals(id)).FirstOrDefault());
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
        }


       
    }


}

