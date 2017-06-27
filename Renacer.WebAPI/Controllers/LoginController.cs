using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Security;

namespace Renacer.WebAPI
{
    public class LoginController : ApiController
    {
        // GET api/<controller>
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/<controller>/5
        public string Get(int id)
        {
            return "value: " + id;
        }

        // POST api/<controller>
        public string Post([FromBody]Dictionary<string, string> user)
        {
            if (user["username"] != null) return "Debe ingresar el nombre de usuario";

            if (user["username"] == ("augusto"))
            {
                FormsAuthentication.SetAuthCookie("augusto", false);
                return "ok";
            }
            return "error";
        }

        // PUT api/<controller>/5
        public void Put(int id, [FromBody]Dictionary<string,string> user)
        {
           
        }

        // DELETE api/<controller>/5
        public void Delete(int id)
        {
        }
    }
}