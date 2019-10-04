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
    public class ControlRating
    {
        private static ControlRating control;

        private ControlRating() { }

        /// <summary>
        /// Metodo para devolver una instancia unica de la Clase.
        /// </summary>
        /// <returns></returns>
        public static ControlRating devolverInstacia()
        {
            if (control == null)
                control = new ControlRating();
            return control;
        }

        /// <summary>
        /// Metodo utilizado para Insertar un nuevo Matricula.
        /// </summary>
        /// <param name="RatingEvento"></param>
        public void grabar(RatingEvento RatingEvento)
        {
            try
            {
            
                using (var db = new ModeloRenacer())
                {
                    db.rating.AddOrUpdate(RatingEvento);
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


        public RatingEvento devolver(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.rating.Where(x => x.id.Equals(id)).FirstOrDefault();
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
        public List<RatingEvento> devolverTodos()
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.rating.ToList();
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
                    RatingEvento reco = db.rating.Where(x => x.id.Equals(id)).FirstOrDefault();

                    db.rating.Remove(reco);
                    db.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
        }



    }
}

