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
    public class ControlMatriculaXSocio
    {
        private static ControlMatriculaXSocio control;

        private ControlMatriculaXSocio() { }

        /// <summary>
        /// Metodo para devolver una instancia unica de la Clase.
        /// </summary>
        /// <returns></returns>
        public static ControlMatriculaXSocio devolverInstacia()
        {
            if (control == null)
                control = new ControlMatriculaXSocio();
            return control;
        }

        /// <summary>
        /// Metodo utilizado para Insertar un nuevo MatriculaXSocio.
        /// </summary>
        /// <param name="MatriculaXSocio"></param>
        public void grabar(MatriculaXSocio MatriculaXSocio)
        {
            try
            {
                //var errores = this.validar(MatriculaXSocio);
                //if (errores.Count > 0)
                //{
                //    throw new UsuarioException(errores);
                //}

                using (var db = new ModeloRenacer())
                {
                    db.matriculaXSocio.AddOrUpdate(MatriculaXSocio);
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


        /// var item = (from i in db.MatriculaXSocio
        ///             where i.id.Equals(id)
        //              select i).FirstOrDefault();
        /// 
        /// 
        /// SELECT * FROM MatriculaXSocio WHERE id = 1;
        public MatriculaXSocio devolver(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.matriculaXSocio.Where(x => x.id.Equals(id)).FirstOrDefault();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }

        /// <summary>
        /// Metodo utilizado para devolver todos los MatriculaXSocio
        /// SELECT * FROM MatriculaXSocio
        /// </summary>
        /// <returns></returns>
        public List<MatriculaXSocio> devolverTodos()
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.matriculaXSocio.Include("socio").Include("matricula").ToList();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }

        /// <summary>
        /// Metodo utilizado para eliminar un MatriculaXSocio.
        /// TODO: El metodo se tiene que cambiar para actualizar un atributo del MatriculaXSocio 
        /// para ver si esta eliminado o no, no se eliminan datos.
        /// </summary>
        public void eliminar(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    db.matriculaXSocio.Remove(db.matriculaXSocio.Where(x => x.id.Equals(id)).FirstOrDefault());
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
        }


        //private List<string> validar(MatriculaXSocio MatriculaXSocio)
        //{
        ////    var errores = new List<string>();

        ////    if (MatriculaXSocio == null)
        ////    {
        ////        errores.Add("No se informó el ítem");
        ////    }

        ////    if (MatriculaXSocio != null && string.IsNullOrEmpty(MatriculaXSocio.nombre))
        ////    {
        ////        errores.Add("No se ingresó el nombre");
        ////    }

        ////    return errores;
        //}
    }
}

