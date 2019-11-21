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
    public class AsistenciaController : ApiController
    {
        //GET: api/cliente
        public IEnumerable<Asistencia> Get()
        {
            return ControlAsistencia.devolverInstacia().devolverTodos();
        }

        // GET: api/cliente/5
        public Asistencia Get(int id)
        {
            return ControlAsistencia.devolverInstacia().devolver(id);
        }
        //idEvento

        public IEnumerable<Asistencia> GetAsistenciasXDetalleEvento([FromUri]int idEvento)
        {

            return ControlAsistencia.devolverInstacia().devolverAsistenciaDetalleEvento(idEvento);

        }


        // POST: api/cliente
        public IHttpActionResult Post([FromBody]Asistencia value)
        {
            try
            {
                ControlAsistencia.devolverInstacia().grabar(value);
                return Ok(value);
            }
            catch (UsuarioException ex)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.BadRequest, ex.errores));
            }
        }

        // PUT: api/cliente/5
        public void Put(int id, [FromBody]Asistencia value)
        {
            ControlAsistencia.devolverInstacia().grabar(value);
        }

        // DELETE: api/ApiCliente/5
        public void Delete(int id)
        {
            ControlAsistencia.devolverInstacia().eliminar(id);
        }
    }
}