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
    public class RecordatorioController : ApiController
    {
        // GET: api/cliente
        public IEnumerable<Recordatorio> Get()
        {
            return ControlRecordatorio.devolverInstacia().devolverTodos();
        }
        //devolverDiaHoy()
        [Route("api/recordatorio/hoy")]
        [HttpGet]
        public IEnumerable<Recordatorio> GetDiaHoy()
        {
            return ControlRecordatorio.devolverInstacia().devolverDiaHoy();

        }

        // GET: api/cliente/5
        public Recordatorio Get(int id)
        {
            return ControlRecordatorio.devolverInstacia().devolver(id);
        }

        // POST: api/cliente
        public IHttpActionResult Post([FromBody]Recordatorio value)
        {
            try
            {
                ControlRecordatorio.devolverInstacia().grabar(value);
                return Ok(value);
            }
            catch (UsuarioException ex)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.BadRequest, ex.errores));
            }
        }

        // PUT: api/cliente/5
        public void Put(int id, [FromBody]Recordatorio value)
        {
            //var espacio = ControlMatricula.devolverInstacia().devolver(id);
            //espacio.nombre = value.nombre;
            //espacio.capacidad = value.capacidad;
            //espacio.estado = value.estado;
            //espacio.descripcion = value.descripcion;
            //espacio.fechaModificacion = DateTime.Now;
            //espacio.idMatricula = value.idMatricula;

            ControlRecordatorio.devolverInstacia().grabar(value);
        }

        // DELETE: api/ApiCliente/5
        public void Delete(int id)
        {
            ControlRecordatorio.devolverInstacia().eliminar(id);
        }
    }
}
