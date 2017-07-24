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
    public class SocioController : ApiController
    {
        // GET: api/Socios
        public IEnumerable<Socio> Get()
        {
            return ControlSocio.devolverInstancia().devolverTodos();
        }

        // GET: api/Socios/5
        public Socio Get(int id)
        {
            return ControlSocio.devolverInstancia().devolver(id);
        }

        // POST: api/cliente
        public IHttpActionResult Post([FromBody]Socio value)
        {
            try
            {
                if (value.id == 0) value.fechaCreacion = DateTime.Now;
                ControlSocio.devolverInstancia().grabar(value);
                return Ok(value);
            }
            catch (UsuarioException ex)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.BadRequest, ex.errores));
            }
        }

        // PUT: api/cliente/5
        public void Put(int id, [FromBody]Socio value)
        {
            var socio = ControlSocio.devolverInstancia().devolver(id);
            value.fechaModificacion = DateTime.Now;
            ControlSocio.devolverInstancia().grabar(value);
        }

        // DELETE: api/ApiCliente/5
        public void Delete(int id)
        {
            var socio = ControlSocio.devolverInstancia().devolver(id);
            socio.fechaBaja = DateTime.Now;
            ControlSocio.devolverInstancia().grabar(socio);

            //ControlSocio.devolverInstancia().eliminar(id);
        }

    }
}
