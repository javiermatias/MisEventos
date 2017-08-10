using Renacer.Nucleo;
using Renacer.Nucleo.Control;
using Renacer.Nucleo.Entidades;
using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;

namespace Renacer.WebAPI.Controllers
{
    public class TipoEventoController : ApiController
    {
            // GET: api/cliente
            public IEnumerable<TipoEvento> Get()
            {
                return ControlTipoEvento.devolverInstacia().devolverTodos();
            }

            // GET: api/cliente/5
            public TipoEvento Get(int id)
            {
                return ControlTipoEvento.devolverInstacia().devolver(id);
            }

            // POST: api/cliente
            public IHttpActionResult Post([FromBody]TipoEvento value)
            {
                try
                {
                    ControlTipoEvento.devolverInstacia().grabar(value);
                    return Ok(value);
                }
                catch (UsuarioException ex)
                {
                    throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.BadRequest, ex.errores));
                }
            }

            // PUT: api/cliente/5
            public void Put(int id, [FromBody]TipoEvento value)
            {
               // var tipoEvento = ControlTipoEvento.devolverInstacia().devolver(id);
                ControlTipoEvento.devolverInstacia().grabar(value);
            }

            // DELETE: api/ApiCliente/5
            public void Delete(int id)
            {
                ControlTipoEvento.devolverInstacia().eliminar(id);
            }
        }
    }
