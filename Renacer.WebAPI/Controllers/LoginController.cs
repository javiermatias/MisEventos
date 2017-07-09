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
        // POST api/<controller>
        public string Post([FromBody]Dictionary<string, string> user)
        {
            if (user["usuario"] != null) return "error Debe ingresar el nombre de usuario";

            if (user["usuario"] =="augusto")
            {
                FormsAuthentication.SetAuthCookie(user["usuario"], false);
                return "ok";
            }
            return "error";
        }
    }
}