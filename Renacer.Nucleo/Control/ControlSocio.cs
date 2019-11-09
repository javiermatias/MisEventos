using Renacer.Nucleo.Controlmatricula;
using Renacer.Nucleo.Entidades;
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
        public Socio grabar(Socio socio)
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
                    socio.nombre = socio.nombre.ToUpper();
                    socio.apellido = socio.nombre.ToUpper();
                    socio.idTipoDoc = socio.tipoDoc.id;
                    Tag[] listaTags = new Tag[socio.listaTags.Count];
                    socio.listaTags.CopyTo(listaTags);
                    socio.listaTags.RemoveAll(tag => true);                    
                    

                    if (socio.domicilio.id == 0) db.Entry(socio.domicilio).State = System.Data.Entity.EntityState.Added;
                    if (socio.domicilio.id > 0)  db.Entry(socio.domicilio).State = System.Data.Entity.EntityState.Modified;

                    if (socio.contacto.id == 0) db.Entry(socio.contacto).State = System.Data.Entity.EntityState.Added;
                    if (socio.contacto.id > 0) db.Entry(socio.contacto).State = System.Data.Entity.EntityState.Modified;

                    db.Entry(socio.tipoDoc).State = System.Data.Entity.EntityState.Unchanged;
                    db.socio.AddOrUpdate(socio);
                    db.SaveChanges();

                    //EspacioComun espacioAux = db.espacioComun.Include("listaTags").Single(a => a.id == espacioComun.id);
                    //ControlTag.devolverInstancia().actualizarListaDeTags(db, listaTags, espacioAux.listaTags);

                    Socio socioAux = db.socio.Include("listaTags").Single(a => a.id == socio.id);
                    ControlTag.devolverInstancia().actualizarListaDeTags(db, listaTags, socioAux.listaTags);
                    
                    db.SaveChanges();

                    return socio;
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
                return null;
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
                    var item = db.socio.
                        Include("tipoDoc").
                        Include("domicilio").
                        Include("contacto").
                        Where(x => x.id.Equals(id)).FirstOrDefault();

                    item.listaTags = db.tag.Where(x => x.listaSocios.Any(xy => xy.id.Equals(id))).ToList();
                    return item;
                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }

        internal void actualizarListaDeSocios(ModeloRenacer db, Socio[] listaInicial, List<Socio> listaFinal)
        {
            if (listaFinal == null) listaFinal = new List<Socio>();
            listaFinal.RemoveAll(socio => true);

            foreach (var item in listaInicial)
            {
                if (item.id <= 0) continue;
                Socio socio = db.socio.FirstOrDefault(t => t.id == item.id);
                if (socio != null)  listaFinal.Add(socio);
            }
        }

        /// <summary>
        /// Metodo utilizado para devolver todos los Socio
        /// SELECT * FROM Socio
        /// </summary>
        /// <returns></returns>
        public List<Socio> devolverTodos(string search)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    //if (search != null)
                    //    return db.socio.Where(x => x.fechaBaja == null && x.nombre.Contains(@search)).ToList();
                    //return db.socio.Where(x => x.nombre.Contains(@search)).Skip(page * limit).Take(limit).ToList();
                    //else
                        return db.socio.Where(x => x.fechaBaja == null && x.nombre.Contains(@search)).ToList();

                }
            }
            catch (Exception ex)
            {
                ServicioSentry.devolverSentry().informarExcepcion(ex);
            }
            return null;
        }

        public void actualizarSocioPagoMatricula(Socio _socio) {
            using (var db = new ModeloRenacer())
            {
                _socio.estado = "Activo";
                db.Entry(_socio).State = System.Data.Entity.EntityState.Modified;
                db.socio.AddOrUpdate(_socio);
                //ControlMatriculaXSocio.devolverInstacia().
                Matricula matricula = ControlMatricula.devolverInstacia().devolverMatriculaActiva();
                if (matricula == null) {
                    return;
                }

                db.Entry(matricula).State = System.Data.Entity.EntityState.Modified;
                MatriculaXSocio matriculaxsocio = new MatriculaXSocio()
                {
                    matricula = matricula,
                    socio = _socio,
                    fechaPago = DateTime.Now,
                    pago = matricula.valor
                    
                };
                db.matriculaXSocio.Add(matriculaxsocio);

                db.SaveChanges();

            }
        }

        public List<Socio> devolverTodosDebeMatricula(/*int page,int limit,string search*/)
        {
            try
            {
                using (var db = new ModeloRenacer())
                {
                    //if (search != null)
                    //    return db.socio.Where(x => x.fechaBaja == null && x.nombre.Contains(@search)).ToList();
                    //return db.socio.Where(x => x.nombre.Contains(@search)).Skip(page * limit).Take(limit).ToList();
                    //else
                    return db.socio.Where(socio => socio.estado == "DebeMatricula").ToList();

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
                var tt = new TipoDocumento();
                tt.nombre = ex.Message;
                var lista = new List<TipoDocumento>();
                lista.Add(tt);
                return lista;
            }
            //return null;
        }


    }
}
