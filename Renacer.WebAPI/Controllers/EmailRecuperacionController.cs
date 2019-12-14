using Renacer.Nucleo.Control;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;

namespace Renacer.WebAPI.Controllers
{
    [EnableCors("*", "*", "*")]
    public class EmailRecuperacionController : ApiController
    {
        // POST api/<controller>
        public IHttpActionResult Post([FromBody]Dictionary<string, string> user)
        {
            Dictionary<string, Object> resp = new Dictionary<string, object>();
            resp.Add("result", "error");

            if (user["email"] == null) return Ok(resp);

            var usuario = ControlUsuario.devolverInstancia().devolver(user["email"]);

            if (usuario != null)
            {
                Models.EnvioMail._enviarEmail(user["email"],
                  Models.EnvioMail.devolverMensajeRecuperoContrasenia(usuario.usuario, usuario.clave),
                  "Foro de los sabios, Recuperación de contraseña.");
                return Ok(resp);
            }
            return Ok(resp);
        }

    }
}
