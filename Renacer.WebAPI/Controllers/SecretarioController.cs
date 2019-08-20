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
    public class SecretarioController : ApiController
    {
        // GET: api/Encargados
        public IEnumerable<Secretario> Get()
        {
            return ControlSecretario.devolverInstancia().devolverTodos();
        }

        // GET: api/Encargados/5
        public Secretario Get(int id)
        {
            return ControlSecretario.devolverInstancia().devolver(id);
        }

        // POST: api/cliente
        public IHttpActionResult Post([FromBody]Secretario value)
        {
            try
            {
                ControlSecretario.devolverInstancia().grabar(value);
                return Ok(value);
            }
            catch (UsuarioException ex)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.BadRequest, ex.errores));
            }
        }

        // PUT: api/cliente/5
        public void Put([FromBody]Secretario value)
        {
           
            ControlSecretario.devolverInstancia().update(value);
        }

        // DELETE: api/ApiCliente/5
        public void Delete(int id)
        {

            ControlSecretario.devolverInstancia().eliminar(id);
        
        }
    }
}
