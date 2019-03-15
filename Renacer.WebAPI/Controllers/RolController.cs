using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Renacer.Nucleo.Control;
using Renacer.Nucleo.Entidades;

namespace Renacer.WebAPI.Controllers
{
    public class RolController : ApiController
    {
        // GET: api/cliente
        public IEnumerable<Rol> Get()
        {
            return ControlRol.devolverInstacia().devolverTodos();
        }

        // GET: api/cliente/5
        public Rol Get(int id)
        {
            return ControlRol.devolverInstacia().devolver(id);
        }

        // POST: api/cliente
        public IHttpActionResult Post([FromBody]Rol value)
        {
            try
            {
                ControlRol.devolverInstacia().grabar(value);
                return Ok(value);
            }
            catch (UsuarioException ex)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.BadRequest, ex.errores));
            }
        }

        // PUT: api/cliente/5
        public void Put(int id, [FromBody]Rol value)
        {
            //var espacio = ControlRol.devolverInstacia().devolver(id);
            //espacio.nombre = value.nombre;
            //espacio.capacidad = value.capacidad;
            //espacio.estado = value.estado;
            //espacio.descripcion = value.descripcion;
            //espacio.fechaModificacion = DateTime.Now;
            //espacio.idTipoEspacio = value.idTipoEspacio;

            ControlRol.devolverInstacia().grabar(value);
        }

        // DELETE: api/ApiCliente/5
        public void Delete(int id)
        {
            ControlRol.devolverInstacia().eliminar(id);
        }
    }
}

