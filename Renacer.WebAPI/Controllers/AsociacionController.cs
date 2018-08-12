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
    public class AsociacionController : ApiController
    {
        // GET: api/Asociacions
        public IEnumerable<Asociacion> Get()
        {
            return ControlAsociacion.devolverInstancia().devolverTodos();
        }

        // GET: api/Asociacions/5
        public Asociacion Get(int id)
        {
            return ControlAsociacion.devolverInstancia().devolver(id);
        }

        // POST: api/cliente
        public IHttpActionResult Post([FromBody]Asociacion value)
        {
            try
            {
                ControlAsociacion.devolverInstancia().grabar(value);
                return Ok(value);
            }
            catch (UsuarioException ex)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.BadRequest, ex.errores));
            }
        }

        // PUT: api/cliente/5
        public void Put(int id, [FromBody]Asociacion value)
        {
            // var asociacion = ControlAsociacion.devolverInstancia().devolver(id);
            value.fechaModificacion = DateTime.Now;
            ControlAsociacion.devolverInstancia().grabar(value);
        }

        // DELETE: api/ApiCliente/5
        public void Delete(int id)
        {
            var asociacion = ControlAsociacion.devolverInstancia().devolver(id);
            asociacion.fechaFin = DateTime.Now;
            ControlAsociacion.devolverInstancia().grabar(asociacion);
        }
    }
}