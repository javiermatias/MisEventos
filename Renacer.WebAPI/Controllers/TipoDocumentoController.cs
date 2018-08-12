using Renacer.Nucleo;
using Renacer.Nucleo.Control;
using Renacer.Nucleo.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Renacer.WebAPI.Controllers
{
    public class TipoDocumentoController : ApiController
    {
        // GET: api/cliente
        public IEnumerable<TipoDocumento> Get()
        {
            return ControlTipoDocumento.devolverInstacia().devolverTodos();
        }

        // GET: api/cliente/5
        public TipoDocumento Get(int id)
        {
            return ControlTipoDocumento.devolverInstacia().devolver(id);
        }

        // POST: api/cliente
        public IHttpActionResult Post([FromBody]TipoDocumento value)
        {
            try
            {
                ControlTipoDocumento.devolverInstacia().grabar(value);
                return Ok(value);
            }
            catch (UsuarioException ex)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.BadRequest, ex.errores));
            }
        }

        // PUT: api/cliente/5
        public void Put(int id, [FromBody]TipoDocumento value)
        {
            //var espacio = ControlTipoDocumento.devolverInstacia().devolver(id);
            //espacio.nombre = value.nombre;
            //espacio.capacidad = value.capacidad;
            //espacio.estado = value.estado;
            //espacio.descripcion = value.descripcion;
            //espacio.fechaModificacion = DateTime.Now;
            //espacio.idTipoEspacio = value.idTipoEspacio;

            ControlTipoDocumento.devolverInstacia().grabar(value);
        }

        // DELETE: api/ApiCliente/5
        public void Delete(int id)
        {
            ControlTipoDocumento.devolverInstacia().eliminar(id);
        }
    }
}
