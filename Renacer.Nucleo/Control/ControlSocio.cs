﻿using Renacer.Nucleo.Entidades;
using Renacer.Nucleo.Servicio;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;

namespace Renacer.Nucleo.Control
{
    public class ControlSocio
    {
        private static ControlSocio control;

        private ControlSocio() { }

        /// <summary>
        /// Metodo para devolver una instancia unica de la Clase.
        /// </summary>
        /// <returns></returns>
        public static ControlSocio devolverInstancia()
        {
            if (control == null)
                control = new ControlSocio();
            return control;
        }

        /// <summary>
        /// Metodo utilizado para Insertar un nuevo socio.
        /// </summary>
        /// <param name="socio"></param>
        public void grabar(Socio socio)
        {
            try
            {
                var errores = this.validar(socio);
                if (errores.Count > 0)
                {
                    throw new UsuarioException(errores);
                }

                using (var db = new ModeloRenacer())
                {


                    db.socio.AddOrUpdate(socio);
                    db.Entry(socio.domicilio).State = System.Data.Entity.EntityState.Modified;
                    db.Entry(socio.contacto).State = System.Data.Entity.EntityState.Modified;
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


        /// var item = (from i in db.socio
        ///             where i.id.Equals(id)
        //              select i).FirstOrDefault();
        /// 
        /// 
        /// SELECT * FROM Socio WHERE id = 1;
        public Socio devolver(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.socio.
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
        /// Metodo utilizado para devolver todos los Socio
        /// SELECT * FROM Socio
        /// </summary>
        /// <returns></returns>
        public List<Socio> devolverTodos()
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.socio.ToList();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }

        /// <summary>
        /// Metodo utilizado para eliminar un socio.
        /// TODO: El metodo se tiene que cambiar para actualizar un atributo del socio 
        /// para ver si esta eliminado o no, no se eliminan datos.
        /// </summary>
        public void eliminar(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    db.socio.Remove(db.socio.Where(x => x.id.Equals(id)).FirstOrDefault());
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
        }


        private List<string> validar(Socio socio)
        {
            var errores = new List<string>();

            if (socio == null)
            {
                errores.Add("No se informo el socio");
            }

            if (socio != null && string.IsNullOrEmpty(socio.nombre))
            {
                errores.Add("No se ingreso el nombre del socio");
            }

            if (socio != null && string.IsNullOrEmpty(socio.apellido))
            {
                errores.Add("No se ingreso el apellido del socio");
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
