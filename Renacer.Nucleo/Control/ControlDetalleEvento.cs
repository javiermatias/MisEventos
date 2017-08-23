﻿using Renacer.Nucleo.Entidades;
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
                    detalleEvento.idEncargado = detalleEvento.responsable.id;
                    detalleEvento.idAsistencia = detalleEvento.asistencia.id;
                    detalleEvento.idEspacio = detalleEvento.espacio.id;

                    db.detalleEvento.AddOrUpdate(detalleEvento);

                    db.Entry(detalleEvento.espacio).State = System.Data.Entity.EntityState.Modified;
                    db.Entry(detalleEvento.responsable).State = System.Data.Entity.EntityState.Modified;
                    db.Entry(detalleEvento.asistencia).State = System.Data.Entity.EntityState.Modified;

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
                    var detalleEvento = db.detalleEvento.Include("Evento")
                        .Where(x => x.id.Equals(id)).FirstOrDefault();

                    if (detalleEvento.idEspacio > 0) detalleEvento.espacio = db.espacioComun.First(x => x.id == detalleEvento.idEspacio);
                    if (detalleEvento.idAsistencia > 0) detalleEvento.asistencia = db.asistencia.First(x => x.id == detalleEvento.idAsistencia);
                    if (detalleEvento.idEncargado > 0) detalleEvento.responsable = db.encargado.First(x => x.id == detalleEvento.idEncargado);

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
                    return db.detalleEvento
                        .Where(ev => ev.fechaDesde >= fechaDesde && ev.fechaDesde <= fechaHasta)
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
