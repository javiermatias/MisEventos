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
    public class TipoEspacioController : ApiController
    {
        // GET: api/cliente
        public IEnumerable<TipoEspacio> Get()
        {
            return ControlTipoEspacio.devolverInstacia().devolverTodos();
        }

        // GET: api/cliente/5
        public TipoEspacio Get(int id)
        {
            return ControlTipoEspacio.devolverInstacia().devolver(id);
        }

        // POST: api/cliente
        public IHttpActionResult Post([FromBody]TipoEspacio value)
        {
            try
            {
                ControlTipoEspacio.devolverInstacia().grabar(value);
                return Ok(value);
            }
            catch (UsuarioException ex)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.BadRequest, ex.errores));
            }
        }

        // PUT: api/cliente/5
        public void Put(int id, [FromBody]TipoEspacio value)
        {
            //var espacio = ControlTipoEspacio.devolverInstacia().devolver(id);
            //espacio.nombre = value.nombre;
            //espacio.capacidad = value.capacidad;
            //espacio.estado = value.estado;
            //espacio.descripcion = value.descripcion;
            //espacio.fechaModificacion = DateTime.Now;
            //espacio.idTipoEspacio = value.idTipoEspacio;

            ControlTipoEspacio.devolverInstacia().grabar(value);
        }

        // DELETE: api/ApiCliente/5
        public void Delete(int id)
        {
            ControlTipoEspacio.devolverInstacia().eliminar(id);
        }
    }
}
