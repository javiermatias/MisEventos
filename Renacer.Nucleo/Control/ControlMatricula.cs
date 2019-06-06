using Renacer.Nucleo.Entidades;
using Renacer.Nucleo.Servicio;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Nucleo.Controlmatricula
{
    public class ControlMatricula
    {
        private static ControlMatricula control;

        private ControlMatricula() { }

        /// <summary>
        /// Metodo para devolver una instancia unica de la Clase.
        /// </summary>
        /// <returns></returns>
        public static ControlMatricula devolverInstacia()
        {
            if (control == null)
                control = new ControlMatricula();
            return control;
        }

        /// <summary>
        /// Metodo utilizado para Insertar un nuevo Matricula.
        /// </summary>
        /// <param name="Matricula"></param>
        public void grabar(Matricula Matricula)
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
                    db.matricula.AddOrUpdate(Matricula);
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
        public Matricula devolver(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.matricula.Where(x => x.id.Equals(id)).FirstOrDefault();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }
        public Matricula devolverMatriculaActiva()
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.matricula.Where(x => x.estado.Equals("Activo")).FirstOrDefault();
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
        public List<Matricula> devolverTodos()
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.matricula.OrderByDescending(x => x.anio).ToList();
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
                    db.matricula.Remove(db.matricula.Where(x => x.id.Equals(id)).FirstOrDefault());
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
        }


        //private List<string> validar(Matricula Matricula)
        //{
        ////    var errores = new List<string>();

        ////    if (Matricula == null)
        ////    {
        ////        errores.Add("No se informó el ítem");
        ////    }

        ////    if (Matricula != null && string.IsNullOrEmpty(Matricula.nombre))
        ////    {
        ////        errores.Add("No se ingresó el nombre");
        ////    }

        ////    return errores;
        //}
    }
}

