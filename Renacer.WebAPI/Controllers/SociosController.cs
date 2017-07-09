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
    public class SociosController : ApiController
    {
        // GET: api/Socios
        public IEnumerable<Socio> Get()
        {
            return ControlSocio.devolverInstancia().devolverTodos();
        }

        // GET: api/Socios/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Socios
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/Socios/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Socios/5
        public void Delete(int id)
        {
        }
    }
}
