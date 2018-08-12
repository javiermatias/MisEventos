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
    public class InscripcionController : ApiController
    {
        // GET: api/cliente
        public IEnumerable<Inscripcion> Get([FromUri] int? idEvento = 0, [FromUri] int? idSocio = 0)
        {
            return ControlInscripcion.devolverInstacia().devolverTodos(idEvento,idSocio);
        }

        // GET: api/cliente/5
        public Inscripcion Get(int id)
        {
            return ControlInscripcion.devolverInstacia().devolver(id);
        }

        // POST: api/cliente
        public IHttpActionResult Post([FromBody]Inscripcion value)
        {
            try
            {
                ControlInscripcion.devolverInstacia().grabar(value);
                return Ok(value);
            }
            catch (UsuarioException ex)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.BadRequest, ex.errores));
            }
        }

        // PUT: api/cliente/5
        public void Put(int id, [FromBody]Inscripcion value)
        {
            ControlInscripcion.devolverInstacia().grabar(value);
        }

        // DELETE: api/ApiCliente/5
        public void Delete(int id)
        {
            ControlInscripcion.devolverInstacia().eliminar(id);
        }
    }
}