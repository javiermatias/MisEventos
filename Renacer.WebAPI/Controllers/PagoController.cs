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
    public class PagoController : ApiController
    {
        // GET: api/cliente
        public IEnumerable<Pago> Get()
        {
            return ControlPagoCuota.devolverInstacia().devolverTodos();
        }

        // GET: api/cliente/5
        public Pago Get(int id)
        {
            return ControlPagoCuota.devolverInstacia().devolver(id);
        }

        // POST: api/cliente
        public IHttpActionResult Post([FromBody]Pago value)
        {
            try
            {
                ControlPagoCuota.devolverInstacia().grabar(value);
                return Ok(value);
            }
            catch (UsuarioException ex)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.BadRequest, ex.errores));
            }
        }

        // PUT: api/cliente/5
        public void Put(int id, [FromBody]Pago value)
        {
            //var espacio = ControlPagoCuota.devolverInstacia().devolver(id);
            //espacio.nombre = value.nombre;
            //espacio.capacidad = value.capacidad;
            //espacio.estado = value.estado;
            //espacio.descripcion = value.descripcion;
            //espacio.fechaModificacion = DateTime.Now;
            //espacio.idMatricula = value.idMatricula;

            ControlPagoCuota.devolverInstacia().grabar(value);
        }

        // DELETE: api/ApiCliente/5
        public void Delete(int id)
        {
            ControlPagoCuota.devolverInstacia().eliminar(id);
        }
    }
}
