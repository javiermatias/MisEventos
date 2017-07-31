using Renacer.Nucleo.Control;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;
using System.Web.Security;

namespace Renacer.WebAPI
{
    [EnableCors("*", "*", "*")]
    public class LoginController : ApiController
    {
        // POST api/<controller>
        public IHttpActionResult Post([FromBody]Dictionary<string, string> user)
        {
            Dictionary<string, Object> resp = new Dictionary<string, object>();
            resp.Add("result", "error");

            if (user["usuario"] == null || user["clave"] == null) return Ok(resp);

            var usuario =  ControlUsuario.devolverInstacia().devolver(user["usuario"], user["clave"]);

            if (usuario != null)
            {
                FormsAuthentication.SetAuthCookie(usuario.usuario, false);
                usuario.clave = "";
                usuario.idGoogle = "";
                usuario.idFacebook = "";
                resp.Add("user", usuario);
                resp["result"] = "ok";
                return Ok(resp);
            }
            return Ok(resp);
        }

    }
}