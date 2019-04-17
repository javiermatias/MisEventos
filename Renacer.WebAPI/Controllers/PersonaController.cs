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
    public class PersonaController : ApiController
    {
        // GET: api/Personas
        public IEnumerable<Persona> Get([FromUri]int rol, [FromUri] string search)
        {
            //if (page <= 0) page = 1;
            //if (limit <= 0) limit = 10;

            return ControlPersona.devolverInstancia().devolverTodos(rol,search);
        }

        // GET: api/Personas/5
        public Persona Get(int id)
        {
            return ControlPersona.devolverInstancia().devolver(id);
        }

        // POST: api/cliente
        public IHttpActionResult Post([FromBody]Persona value)
        {
            try
            {
                if (value.id == 0) value.fechaCreacion = DateTime.Now;
                int id = ControlPersona.devolverInstancia().grabar(value);
                value = Get(id);
                //value.id = id;
                return Ok(value);
            }
            catch (UsuarioException ex)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.BadRequest, ex.errores));
            }
        }

        // PUT: api/cliente/5
        public void Put(int id, [FromBody]Persona value)
        {
            var socio = ControlPersona.devolverInstancia().devolver(id);
            value.fechaModificacion = DateTime.Now;
            ControlPersona.devolverInstancia().grabar(value);
        }

        // DELETE: api/ApiCliente/5
        public void Delete(int id)
        {
            var socio = ControlPersona.devolverInstancia().devolver(id);
            socio.fechaBaja = DateTime.Now;
            ControlPersona.devolverInstancia().grabar(socio);

            //ControlPersona.devolverInstancia().eliminar(id);
        }

    }
}
