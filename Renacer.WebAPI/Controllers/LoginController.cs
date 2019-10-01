using Renacer.Nucleo.Control;
using System;
using System.Collections.Generic;
using System.Configuration;
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

            var usuario =  ControlUsuario.devolverInstancia().devolver(user["usuario"], user["clave"]);

            if (usuario != null)
            {
                //FormsAuthentication.SetAuthCookie(usuario.usuario, false);
                var token = System.Guid.NewGuid().ToString().Replace("-", "");

               // usuario.fechaUltimoAcceso = DateTime.Now;
                usuario.token = token;
                ControlUsuario.devolverInstancia().grabar(usuario);

                //usuario.clave = "";
                // usuario.idGoogle = "";
                // usuario.idFacebook = "";

                usuario.imagen = ConfigurationManager.AppSettings["url_base"] + usuario.imagen;

                resp.Add("user", usuario);
                resp["token"] = token;
                resp["result"] = "ok";
                return Ok(resp);
            }
            return Ok(resp);
        }

    }
}