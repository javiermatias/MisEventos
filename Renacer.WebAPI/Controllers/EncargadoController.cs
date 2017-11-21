using Renacer.Nucleo.Control;
using Renacer.Nucleo.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Renacer.WebAPI
{
    public class EncargadoController : ApiController
    {
        // GET: api/Encargados
        public IEnumerable<Encargado> Get()
        {
            return ControlEncargado.devolverInstancia().devolverTodos();
        }

        // GET: api/Encargados/5
        public Encargado Get(int id)
        {
            return ControlEncargado.devolverInstancia().devolver(id);
        }

        // POST: api/cliente
        public IHttpActionResult Post([FromBody]Encargado value)
        {
            try
            {
                ControlEncargado.devolverInstancia().grabar(value);
                return Ok(value);
            }
            catch (UsuarioException ex)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.BadRequest, ex.errores));
            }
        }

        // PUT: api/cliente/5
        public void Put(int id, [FromBody]Encargado value)
        {
            // var encargado = ControlEncargado.devolverInstancia().devolver(id);
            value.fechaModificacion = DateTime.Now;
            ControlEncargado.devolverInstancia().grabar(value);
        }

        // DELETE: api/ApiCliente/5
        public void Delete(int id)
        {
            var encargado = ControlEncargado.devolverInstancia().devolver(id);
            encargado.fechaBaja = DateTime.Now;
            ControlEncargado.devolverInstancia().grabar(encargado);
          //  ControlEncargado.devolverInstancia().eliminar(id);
        }
    }
}