using Renacer.Nucleo.Entidades;
using Renacer.Nucleo.Servicio;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;

namespace Renacer.Nucleo.Control
{
    public class ControlEvento
    {
        private static ControlEvento control;

        private ControlEvento() { }

        /// <summary>
        /// Metodo para devolver una instancia unica de la Clase.
        /// </summary>
        /// <returns></returns>
        public static ControlEvento devolverInstancia()
        {
            if (control == null)
                control = new ControlEvento();
            return control;
        }

        /// <summary>
        /// Metodo utilizado para Insertar un nuevo evento.
        /// </summary>
        /// <param name="evento"></param>
        public void grabar(Evento evento)
        {
            try
            {
                var errores = this.validar(evento);
                if (errores.Count > 0)
                {
                    throw new UsuarioException(errores);
                }

               

                using (var db = new ModeloRenacer())
                {
                    evento.idEncargado = evento.responsable.id;
                    if (evento.responsable.id == 0) db.Entry(evento.responsable).State = System.Data.Entity.EntityState.Added;
                    if (evento.responsable.id > 0)  db.Entry(evento.responsable).State = System.Data.Entity.EntityState.Modified;

                    evento.idTipoEvento = evento.tipo.id;
                    db.Entry(evento.tipo).State = System.Data.Entity.EntityState.Modified;

                    db.evento.AddOrUpdate(evento);

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


        /// var item = (from i in db.evento
        ///             where i.id.Equals(id)
        //              select i).FirstOrDefault();
        /// 
        /// 
        /// SELECT * FROM Evento WHERE id = 1;
        public Evento devolver(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.evento.
                        Include("tipoDoc").
                        Include("domicilio").
                        Include("contacto").
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
        /// Metodo utilizado para devolver todos los Evento
        /// SELECT * FROM Evento
        /// </summary>
        /// <returns></returns>
        public List<Evento> devolverTodos()
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.evento.ToList();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }

        /// <summary>
        /// Metodo utilizado para eliminar un evento.
        /// TODO: El metodo se tiene que cambiar para actualizar un atributo del evento 
        /// para ver si esta eliminado o no, no se eliminan datos.
        /// </summary>
        public void eliminar(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    db.evento.Remove(db.evento.Where(x => x.id.Equals(id)).FirstOrDefault());
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
        }


        private List<string> validar(Evento evento)
        {
            var errores = new List<string>();

            if (evento == null)
            {
                errores.Add("No se informo el evento");
            }

            if (evento != null && string.IsNullOrEmpty(evento.nombre))
            {
                errores.Add("No se ingreso el nombre del evento");
            }

            return errores;
        }



        public List<TipoDocumento> devolverTiposDocumentos()
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.tipoDocumento.ToList();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }


    }
}
