using Renacer.Nucleo.Entidades;
using Renacer.Nucleo.Servicio;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;

namespace Renacer.Nucleo.Control
{
    public class ControlTag
    {
        private static ControlTag control;

        private ControlTag() { }

        /// <summary>
        /// Metodo para devolver una instancia unica de la Clase.
        /// </summary>
        /// <returns></returns>
        public static ControlTag devolverInstancia()
        {
            if (control == null)
                control = new ControlTag();
            return control;
        }

        /// <summary>
        /// Metodo utilizado para Insertar un nuevo tag.
        /// </summary>
        /// <param name="tag"></param>
        public void grabar(Tag tag)
        {
            try
            {
                var errores = this.validar(tag);
                if (errores.Count > 0)
                {
                    throw new UsuarioException(errores);
                }

                using (var db = new ModeloRenacer())
                {
                    db.tag.AddOrUpdate(tag);
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


        /// var item = (from i in db.tag
        ///             where i.id.Equals(id)
        //              select i).FirstOrDefault();
        /// 
        /// 
        /// SELECT * FROM Tag WHERE id = 1;
        public Tag devolver(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.tag.
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
        /// Metodo utilizado para devolver todos los Tag
        /// SELECT * FROM Tag
        /// </summary>
        /// <returns></returns>
        public List<Tag> devolverTodos()
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    return db.tag.ToList();
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }

        /// <summary>
        /// Metodo utilizado para eliminar un tag.
        /// TODO: El metodo se tiene que cambiar para actualizar un atributo del tag 
        /// para ver si esta eliminado o no, no se eliminan datos.
        /// </summary>
        public void eliminar(int id)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    db.tag.Remove(db.tag.Where(x => x.id.Equals(id)).FirstOrDefault());
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
        }

        internal void actualizarListaDeTags(ModeloRenacer db, Tag[] listaInicial,List<Tag> listaFinal)
        {
            if (listaFinal == null) listaFinal = new List<Tag>();
            listaFinal.RemoveAll(tag => true);

            foreach (var itemTag in listaInicial)
            {
                if (itemTag.nombre == null || itemTag.nombre.Trim() == "") continue;

                Tag tag = db.tag.FirstOrDefault(t => t.nombre == itemTag.nombre);
                if (tag == null)
                {
                    tag = new Tag();
                    tag.nombre = itemTag.nombre;
                   // tag.descripcion = (itemTag.descripcion != null) ? itemTag.descripcion : "";
                    db.tag.Add(tag);
                }
                listaFinal.Add(tag);
            }
        }

        private List<string> validar(Tag tag)
        {
            var errores = new List<string>();

            if (tag == null)
            {
                errores.Add("No se informo el tag");
            }

            if (tag != null && string.IsNullOrEmpty(tag.nombre))
            {
                errores.Add("No se ingreso el nombre del tag");
            }

            return errores;
        }
    }
}
