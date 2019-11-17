using Renacer.Nucleo.Entidades;
using Renacer.Nucleo.Servicio;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Nucleo.Control
{
    public class ControlSecretario
    {
        private static ControlSecretario control;

        private ControlSecretario() { }

        /// <summary>
        /// Metodo para devolver una instancia unica de la Clase.
        /// </summary>
        /// <returns></returns>
        public static ControlSecretario devolverInstancia()
        {
            if (control == null)
                control = new ControlSecretario();
            return control;
        }

        /// <summary>
        /// Metodo utilizado para Insertar un nuevo Matricula.
        /// </summary>
        /// <param name="Matricula"></param>
        public void grabar(Secretario secretario)
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
                    if (secretario.tipoDoc !=null)
                    {
                        secretario.idTipoDoc = secretario.tipoDoc.id;
                        secretario.tipoDoc = null;
                    }

                    if (secretario.id == 0)
                    {
                        db.Entry(secretario).State = EntityState.Added;
                    }
                    else {
                        db.Entry(secretario).State = EntityState.Modified;
                    }

                    db.secretario.AddOrUpdate(secretario);
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
        public Secretario devolver(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.secretario.Include("tipoDoc").Where(x => x.id.Equals(id)).FirstOrDefault();
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
        public List<Secretario> devolverTodos()
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.secretario.Where(x => x.fechaBaja == null).ToList();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }

        /// <summary>
        /// Metodo utilizado para actualizar un nueva Secretario.
        /// </summary>
        /// <param name="Matricula"></param>
        public void update(Secretario secretario)
        {
            try
            {
               
                using (var db = new ModeloRenacer())
                {

                    if (secretario.tipoDoc != null)
                    {
                        secretario.idTipoDoc = secretario.tipoDoc.id;
                        secretario.tipoDoc = null;
                    }

                    db.secretario.AddOrUpdate(secretario);
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
                    var secretario = ControlSecretario.devolverInstancia().devolver(id);
                    secretario.fechaBaja = DateTime.Now;
                    db.secretario.AddOrUpdate(secretario);
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
