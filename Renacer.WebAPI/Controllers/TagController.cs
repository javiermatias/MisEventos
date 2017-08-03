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
    public class TagController : ApiController
    {
        // GET: api/cliente
        public IEnumerable<Tag> Get()
        {
            return ControlTag.devolverInstancia().devolverTodos();
        }

        // GET: api/cliente/5
        public Tag Get(int id)
        {
            return ControlTag.devolverInstancia().devolver(id);
        }

        // POST: api/cliente
        public IHttpActionResult Post([FromBody]Tag value)
        {
            try
            {
                ControlTag.devolverInstancia().grabar(value);
                return Ok(value);
            }
            catch (UsuarioException ex)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.BadRequest, ex.errores));
            }
        }

        // PUT: api/cliente/5
        public void Put(int id, [FromBody]Tag value)
        {
            var espacio = ControlTag.devolverInstancia().devolver(id);
            ControlTag.devolverInstancia().grabar(value);
        }

        // DELETE: api/ApiCliente/5
        public void Delete(int id)
        {
            ControlTag.devolverInstancia().eliminar(id);
        }
    }
}
