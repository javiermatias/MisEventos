using Renacer.Core.Entity;
using System.Collections.Generic;
using System.Web.Http;

namespace Renacer.WebAPI.Controllers
{
    public class ClienteController : ApiController
    {
        // GET: api/Cliente
        public IEnumerable<Cliente> Get()
        {
            return Core.Control.ControlCliente.devolverControl().devolverTodos();
        }

        // GET: api/Cliente/5
        public Cliente Get(int id)
        {
            return Core.Control.ControlCliente.devolverControl().devolverPorId(id);
        }

        // POST: api/Cliente
        public void Post([FromBody]Cliente value)
        {
        }

        // PUT: api/Cliente/5
        public void Put(int id, [FromBody]Cliente value)
        {
        }

        // DELETE: api/Cliente/5
        public void Delete(int id)
        {
        }
    }
}
