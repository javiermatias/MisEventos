using Renacer.Nucleo;
using Renacer.Nucleo.Control;
using Renacer.WebAPI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Renacer.WebAPI.Controllers
{
    public class UsuarioClaveController : ApiController
    {

        // GET: api/Usuarios
        public List<Usuario> Get()
        {
            return ControlUsuario.devolverInstancia().devolverTodos();
        }


        public string Post([FromBody]Usuario user)
        {
           
            EnvioMail.enviarMail(user.email, user.usuario, user.clave);

            return "enviado";
        }
    }
}
