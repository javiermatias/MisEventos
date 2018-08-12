using Renacer.Nucleo.Entidades;
using Renacer.Nucleo.Servicio;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;

namespace Renacer.Nucleo.Control
{
    public class ControlCliente
    {
        private static ControlCliente control;

        private ControlCliente() { }

        /// <summary>
        /// Metodo para devolver una instancia unica de la Clase.
        /// </summary>
        /// <returns></returns>
        public static ControlCliente devolverCliente()
        {
            if (control == null)
                control = new ControlCliente();
            return control;
        }

        /// <summary>
        /// Metodo utilizado para Insertar un nuevo cliente.
        /// </summary>
        /// <param name="cliente"></param>
        public void grabar(Cliente cliente)
        {
            try
            {
                var errores = this.validar(cliente);
                if (errores.Count > 0)
                {
                    throw new UsuarioException(errores);
                }

                using (var db = new ModeloRenacer())
                {


                    db.cliente.AddOrUpdate(cliente);
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


        /// var item = (from i in db.cliente
        ///             where i.id.Equals(id)
        //              select i).FirstOrDefault();
        /// 
        /// 
        /// SELECT * FROM Cliente WHERE id = 1;
        public Cliente devolver(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.cliente.
                        Include("tipoDoc").
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
        /// Metodo utilizado para devolver todos los Cliente
        /// SELECT * FROM Cliente
        /// </summary>
        /// <returns></returns>
        public List<Cliente> devolverTodos()
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.cliente.ToList();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }

        /// <summary>
        /// Metodo utilizado para eliminar un cliente.
        /// TODO: El metodo se tiene que cambiar para actualizar un atributo del cliente 
        /// para ver si esta eliminado o no, no se eliminan datos.
        /// </summary>
        public void eliminar(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    db.cliente.Remove(db.cliente.Where(x => x.id.Equals(id)).FirstOrDefault());
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
        }


        private List<string> validar(Cliente cliente)
        {
            var errores = new List<string>();

            if (cliente == null)
            {
                errores.Add("No se informo el cliente");
            }

            if (cliente != null && string.IsNullOrEmpty(cliente.nombre))
            {
                errores.Add("No se ingreso el nombre del cliente");
            }

            if (cliente != null && string.IsNullOrEmpty(cliente.apellido))
            {
                errores.Add("No se ingreso el apellido del cliente");
            }

            return errores;
        }
    }
}
