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
    public class ControlPagoCuota
    {
        private static ControlPagoCuota control;

        private ControlPagoCuota() { }

        /// <summary>
        /// Metodo para devolver una instancia unica de la Clase.
        /// </summary>
        /// <returns></returns>
        public static ControlPagoCuota devolverInstacia()
        {
            if (control == null)
                control = new ControlPagoCuota();
            return control;
        }

        /// <summary>
        /// Metodo utilizado para Insertar un nuevo Pago.
        /// </summary>
        /// <param name="Pago"></param>
        public void grabar(Pago Pago)
        {
            try
            {
             
                using (var db = new ModeloRenacer())
                {

                    db.pagoCuota.AddOrUpdate(Pago);
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


        /// var item = (from i in db.Pago
        ///             where i.id.Equals(id)
        //              select i).FirstOrDefault();
        /// 
        /// 
        /// SELECT * FROM Pago WHERE id = 1;
        public Pago devolver(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.pagoCuota.Where(x => x.id.Equals(id)).FirstOrDefault();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }
   
        /// <summary>
        /// Metodo utilizado para devolver todos los Pago
        /// SELECT * FROM Pago
        /// </summary>
        /// <returns></returns>
        public List<Pago> devolverTodos()
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.pagoCuota.ToList();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }



        public List<Pago> devolverTodosXSocio(int idInscripcion)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.pagoCuota.Where(x => x.idInscripcion.Equals(idInscripcion)).ToList();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }

        /// <summary>
        /// Metodo utilizado para devolver todos los Pago
        /// SELECT * FROM Pago
        /// </summary>
        /// <returns></returns>
        public Pago devolverUltimo()
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    //Product prod = db.Products.LastOrDefault<Product>();
                    return db.pagoCuota.ToList().LastOrDefault<Pago>(); ;
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }

        /// <summary>
        /// Metodo utilizado para eliminar un Pago.
        /// TODO: El metodo se tiene que cambiar para actualizar un atributo del Pago 
        /// para ver si esta eliminado o no, no se eliminan datos.
        /// </summary>
        public void eliminar(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    db.pagoCuota.Remove(db.pagoCuota.Where(x => x.id.Equals(id)).FirstOrDefault());
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
        }

    }
}
