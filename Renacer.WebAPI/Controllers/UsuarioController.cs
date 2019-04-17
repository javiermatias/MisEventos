using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Renacer.Nucleo.Control;
using Renacer.Nucleo.Entidades;
using Renacer.Nucleo;
using Renacer.WebAPI.Filters;

namespace Renacer.WebAPI.Controllers
{
    //[IdentityBasicAuthentication] 
    //[Authorize] 
    public class UsuarioController : ApiController
    {
        // GET: api/Usuarios
        public Usuario Get([FromUri]int tipoDni, [FromUri] string dni)
        {
            return ControlUsuario.devolverInstancia().devolverTodos(tipoDni, dni);
        }

        // GET: api/Usuarios/5
        public Usuario Get()
        {
            return ControlUsuario.devolverInstancia().devolverPorUsuario(User.Identity.Name);
        }

        // POST: api/cliente
        public IHttpActionResult Post([FromBody]Usuario value)
        {
            try
            {
                if (value.id == 0) value.fechaCreacion = DateTime.Now;
                ControlUsuario.devolverInstancia().grabar(value);
                return Ok(value);
            }
            catch (UsuarioException ex)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.BadRequest, ex.errores));
            }
        }

        // PUT: api/cliente/5
        public void Put(int id, [FromBody]Usuario value)
        {
            var usuario = ControlUsuario.devolverInstancia().devolver(id);
            value.fechaModificacion = DateTime.Now;
            ControlUsuario.devolverInstancia().grabar(value);
        }

        // DELETE: api/ApiCliente/5
        public void Delete(int id)
        {
            var usuario = ControlUsuario.devolverInstancia().devolver(id);
            usuario.fechaBaja = DateTime.Now;
            ControlUsuario.devolverInstancia().grabar(usuario);

            //ControlUsuario.devolverInstancia().eliminar(id);
        }

    }
}
