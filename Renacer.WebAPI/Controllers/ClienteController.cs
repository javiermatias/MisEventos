using Renacer.Nucleo;
using Renacer.Nucleo.Control;
using Renacer.Nucleo.Entidades;
using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Renacer.WebAPI.Controllers
{
    public class ClienteController : ApiController
    {
        // GET: api/cliente
        public IEnumerable<Cliente> Get()
        {
            return ControlCliente.devolverCliente().devolverTodos();
        }

        // GET: api/cliente/5
        public Cliente Get(int id)
        {
            return ControlCliente.devolverCliente().devolver(id);
        }

        // POST: api/cliente
        public IHttpActionResult Post([FromBody]Cliente value)
        {
            try
            {
                ControlCliente.devolverCliente().grabar(value);
                return Ok(value);
            }
            catch (UsuarioException ex)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.BadRequest, ex.errores));
            }
        }

        // PUT: api/cliente/5
        public void Put(int id, [FromBody]Cliente value)
        {
            var cliente = ControlCliente.devolverCliente().devolver(id);
            cliente.nombre = value.nombre;
            cliente.apellido = value.apellido;

            ControlCliente.devolverCliente().grabar(cliente);
        }

        // DELETE: api/ApiCliente/5
        public void Delete(int id)
        {
            ControlCliente.devolverCliente().eliminar(id);
        }
    }
}
