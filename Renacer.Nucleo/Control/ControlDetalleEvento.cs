using Renacer.Nucleo.Entidades;
using Renacer.Nucleo.Servicio;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;

namespace Renacer.Nucleo.Control
{
    public class ControlDetalleEvento
    {
        private static ControlDetalleEvento control;

        private ControlDetalleEvento() { }

        /// <summary>
        /// Metodo para devolver una instancia unica de la Clase.
        /// </summary>
        /// <returns></returns>
        public static ControlDetalleEvento devolverInstancia()
        {
            if (control == null)
                control = new ControlDetalleEvento();
            return control;
        }

        /// <summary>
        /// Metodo utilizado para Insertar un nuevo detalleEvento.
        /// </summary>
        /// <param name="detalleEvento"></param>
        public void grabar(DetalleEvento detalleEvento)
        {
            try
            {
                var errores = this.validar(detalleEvento);
                if (errores.Count > 0)
                {
                    throw new UsuarioException(errores);
                }

                using (var db = new ModeloRenacer())
                {
                    if (detalleEvento.espacio != null)
                        detalleEvento.espacio = db.espacioComun.Single(a => a.id == detalleEvento.espacio.id);

                    //if (detalleEvento.asistencia != null)
                    //    detalleEvento.asistencia = db.asistencia.Single(a => a.id == detalleEvento.asistencia.id);

                    if (detalleEvento.responsable != null)
                        detalleEvento.responsable = db.encargado.Single(a => a.id == detalleEvento.responsable.id);

                    db.detalleEvento.Add(detalleEvento);
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

        public void actualizar(DetalleEvento detalleEvento) {

            try
            {
              
                using (var db = new ModeloRenacer())
                {
                    if (detalleEvento.espacio != null)
                        detalleEvento.espacio = db.espacioComun.Single(a => a.id == detalleEvento.espacio.id);

                    //if (detalleEvento.asistencia != null)
                    //    detalleEvento.asistencia = db.asistencia.Single(a => a.id == detalleEvento.asistencia.id);

                    if (detalleEvento.responsable != null)
                        detalleEvento.responsable = db.encargado.Single(a => a.id == detalleEvento.responsable.id);

                    db.detalleEvento.AddOrUpdate(detalleEvento);
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


        /// var item = (from i in db.detalleEvento
        ///             where i.id.Equals(id)
        //              select i).FirstOrDefault();
        /// 
        /// 
        /// SELECT * FROM DetalleEvento WHERE id = 1;
        public DetalleEvento devolver(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    var detalleEvento = db.detalleEvento
                        .Where(x => x.id.Equals(id)).FirstOrDefault();

                    if (detalleEvento.idEspacio > 0) detalleEvento.espacio = db.espacioComun.Single(x => x.id == detalleEvento.idEspacio);
                    //if (detalleEvento.idAsistencia > 0) detalleEvento.asistencia = db.asistencia.Single(x => x.id == detalleEvento.idAsistencia);
                    if (detalleEvento.idEncargado > 0) detalleEvento.responsable = db.encargado.Single(x => x.id == detalleEvento.idEncargado);

                    return detalleEvento;
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }

        internal void actualizarListaDeDetalleEventos(ModeloRenacer db, DetalleEvento[] listaInicial, List<DetalleEvento> listaFinal)
        {
            if (listaFinal == null) listaFinal = new List<DetalleEvento>();
            listaFinal.RemoveAll(detalleEvento => true);

            foreach (var item in listaInicial)
            {
                if (item.id == 0) {
                    listaFinal.Add(item);
                }
                else {
                    DetalleEvento detalleEvento = db.detalleEvento.FirstOrDefault(t => t.id == item.id);
                    if (detalleEvento != null) listaFinal.Add(detalleEvento);
                }
            }
        }

        /// <summary>
        /// Metodo utilizado para devolver todos los DetalleEvento
        /// SELECT * FROM DetalleEvento
        /// </summary>
        /// <returns></returns>
        public List<DetalleEvento> devolverTodos(DateTime fechaDesde, DateTime fechaHasta)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.detalleEvento.
                        Include("espacio").
                        Include("responsable")
                        .Where(ev => ev.fechaDesde >= fechaDesde && ev.fechaDesde <= fechaHasta && ev.fechaBaja == null)
                        .ToList();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }

        //Devuelvo todos los detalles de un evento.
        public List<DetalleEvento> devolverTodos(int idEvento)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.detalleEvento                       
                        .Where(ev => ev.idEvento == idEvento && ev.fechaBaja == null)
                        .ToList();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }



        /// <summary>
        /// Metodo utilizado para devolver todos los DetalleEvento por Aula
        /// SELECT * FROM DetalleEvento
        /// </summary>
        /// <returns></returns>
        public List<DetalleEvento> devolverTodos(DateTime fechaDesde, DateTime fechaHasta, Int32 _idEvento)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.detalleEvento
                        .Where(ev => ev.fechaDesde >= fechaDesde && ev.fechaDesde <= fechaHasta && ev.fechaBaja == null && ev.idEvento ==_idEvento)
                        .ToList();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }


        public List<Calendario> devolverTodosCalendario(DateTime fechaDesde, DateTime fechaHasta, int idEspacio)
        {
            try
            {
                List<Calendario> listaCalendario = new List<Calendario>();
                using (var db = new ModeloRenacer())
                {
                    List<DetalleEvento> listaDetalle = db.detalleEvento.
                        Include("espacio").
                        Include("responsable")
                        .Where(ev => ev.fechaDesde >= fechaDesde && ev.fechaDesde <= fechaHasta && ev.fechaBaja == null)
                        .Where(ev => ev.idEspacio == idEspacio || idEspacio == 0)
                        .ToList();
                    foreach (var item in listaDetalle)
                    {
                        Calendario itemCalendario = new Calendario();
                        itemCalendario.id = item.id;
                        itemCalendario.nombre = item.nombre;
                        itemCalendario.descripcion = item.descripcion;
                        itemCalendario.idEvento = item.idEvento;
                        itemCalendario.dia = item.dia;
                        itemCalendario.fechaDesde = item.fechaDesde;
                        itemCalendario.fechaHasta = item.fechaHasta;
                        itemCalendario.aula = item.espacio.nombre;
                        itemCalendario.encargado = item.responsable.nombre + " " + item.responsable.apellido;
                        listaCalendario.Add(itemCalendario);
                    }

                    return listaCalendario;
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }

        /// <summary>
        /// Metodo utilizado para eliminar un detalleEvento.
        /// TODO: El metodo se tiene que cambiar para actualizar un atributo del detalleEvento 
        /// para ver si esta eliminado o no, no se eliminan datos.
        /// </summary>
        public void eliminar(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    db.detalleEvento.Remove(db.detalleEvento.Where(x => x.id.Equals(id)).FirstOrDefault());
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
        }


        public List<DetalleEvento> devolverTodosXEncargado(int _idEvento, int _idEncargado) {

            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.detalleEvento
                        .Where(ev => ev.idEvento == _idEvento && ev.idEncargado == _idEncargado && ev.fechaBaja == null)
                        .ToList();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }


        public List<DetalleEvento> devolverTodosXEncargado(int _idEvento)
        {

            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.detalleEvento
                        .Where(ev => ev.idEvento == _idEvento && ev.fechaBaja == null)
                        .ToList();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }





        private List<string> validar(DetalleEvento detalleEvento)
        {
            var errores = new List<string>();

            if (detalleEvento == null)
            {
                errores.Add("No se informo el detalleEvento");
            }

            if (detalleEvento != null && string.IsNullOrEmpty(detalleEvento.nombre))
            {
                errores.Add("No se ingreso el nombre del detalleEvento");
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
