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
        public IEnumerable<Dictionary<string, object>> Get()
        {

            Dictionary<string, object> socio = new Dictionary<string, object>();
            socio.Add("id", 1);
            socio.Add("nombre", "Augus");
            socio.Add("apellido", "galan");
            socio.Add("nroSocio", 23);

            List<Dictionary<string, object>> Lista = new List<Dictionary<string, object>>();
            Lista.Add(socio);
            return Lista;
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
