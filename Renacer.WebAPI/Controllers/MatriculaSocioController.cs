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
    public class MatriculaSocioController : ApiController
    {
        // GET: api/cliente
        public IEnumerable<MatriculaXSocio> Get()
        {
            return ControlMatriculaXSocio.devolverInstacia().devolverTodos();
        }

        // GET: api/cliente/5
        public MatriculaXSocio Get(int id)
        {
            return ControlMatriculaXSocio.devolverInstacia().devolver(id);
        }

        // POST: api/cliente
        public IHttpActionResult Post([FromBody]MatriculaXSocio value)
        {
            try
            {
                ControlMatriculaXSocio.devolverInstacia().grabar(value);
                return Ok(value);
            }
            catch (UsuarioException ex)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.BadRequest, ex.errores));
            }
        }

        // PUT: api/cliente/5
        public void Put(int id, [FromBody]MatriculaXSocio value)
        {
          
            ControlMatriculaXSocio.devolverInstacia().grabar(value);
        }

        // DELETE: api/ApiCliente/5
        public void Delete(int id)
        {
            ControlMatriculaXSocio.devolverInstacia().eliminar(id);
        }
    }
}


