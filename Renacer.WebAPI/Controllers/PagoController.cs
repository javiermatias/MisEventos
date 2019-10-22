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
        public IHttpActionResult Post([FromBody]Pago _pago)
        {
            try
            {
                Pago pago = ControlPagoCuota.devolverInstacia().devolverUltimo();
                _pago.fechaCobro = DateTime.Now;
                _pago.nroRecibo = pago.id + 10000;
                ControlPagoCuota.devolverInstacia().grabar(_pago);
                return Ok(_pago);
            }
            catch (UsuarioException ex)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.BadRequest, ex.errores));
            }
        }

        // PUT: api/cliente/5
        public void Put(int id, [FromBody]Pago _pago)
        {
 
            _pago.fechaCobro = DateTime.Now;
            ControlPagoCuota.devolverInstacia().grabar(_pago);
            
        }

        // DELETE: api/ApiCliente/5
        public void Delete(int id)
        {
            ControlPagoCuota.devolverInstacia().eliminar(id);
        }
    }
}
