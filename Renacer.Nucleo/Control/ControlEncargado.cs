using Renacer.Nucleo.Entidades;
using Renacer.Nucleo.Servicio;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;

namespace Renacer.Nucleo.Control
{
    public class ControlEncargado
    {
        private static ControlEncargado control;

        private ControlEncargado() { }

        /// <summary>
        /// Metodo para devolver una instancia unica de la Clase.
        /// </summary>
        /// <returns></returns>
        public static ControlEncargado devolverInstancia()
        {
            if (control == null)
                control = new ControlEncargado();
            return control;
        }

        /// <summary>
        /// Metodo utilizado para Insertar un nuevo encargado.
        /// </summary>
        /// <param name="encargado"></param>
        public void grabar(Encargado encargado)
        {
            try
            {
                var errores = this.validar(encargado);
                if (errores.Count > 0)
                {
                    throw new UsuarioException(errores);
                }

                using (var db = new ModeloRenacer())
                {
                    db.encargado.AddOrUpdate(encargado);

                    if (encargado.domicilio.id == 0) db.Entry(encargado.domicilio).State = System.Data.Entity.EntityState.Added;
                    if (encargado.domicilio.id > 0)  db.Entry(encargado.domicilio).State = System.Data.Entity.EntityState.Modified;
                 
                    db.Entry(encargado.tipoDoc).State = System.Data.Entity.EntityState.Unchanged;
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


        /// var item = (from i in db.encargado
        ///             where i.id.Equals(id)
        //              select i).FirstOrDefault();
        /// 
        /// 
        /// SELECT * FROM Encargado WHERE id = 1;
        public Encargado devolver(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.encargado.
                        Include("tipoDoc").
                        Include("domicilio").
                        Include("listaTags").
                        Where(x => x.id.Equals(id)).FirstOrDefault();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }

        /// <summary>
        /// Metodo utilizado para devolver todos los Encargado
        /// SELECT * FROM Encargado
        /// </summary>
        /// <returns></returns>
        public List<Encargado> devolverTodos()
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.encargado.ToList();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }

        /// <summary>
        /// Metodo utilizado para eliminar un encargado.
        /// TODO: El metodo se tiene que cambiar para actualizar un atributo del encargado 
        /// para ver si esta eliminado o no, no se eliminan datos.
        /// </summary>
        public void eliminar(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    db.encargado.Remove(db.encargado.Where(x => x.id.Equals(id)).FirstOrDefault());
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
        }


        private List<string> validar(Encargado encargado)
        {
            var errores = new List<string>();

            if (encargado == null)
            {
                errores.Add("No se informo el encargado");
            }

            if (encargado != null && string.IsNullOrEmpty(encargado.nombre))
            {
                errores.Add("No se ingreso el nombre del encargado");
            }

            if (encargado != null && string.IsNullOrEmpty(encargado.apellido))
            {
                errores.Add("No se ingreso el apellido del encargado");
            }

            return errores;
        }



      


    }
}
