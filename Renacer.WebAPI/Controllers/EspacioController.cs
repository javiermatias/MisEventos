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
    public class EspacioController : ApiController
    {
        // GET: api/cliente
        public IEnumerable<EspacioComun> Get()
        {
            return ControlEspacioComun.devolverInstacia().devolverTodos();
        }

        // GET: api/cliente/5
        public EspacioComun Get(int id)
        {
            return ControlEspacioComun.devolverInstacia().devolver(id);
        }

        // POST: api/cliente
        public IHttpActionResult Post([FromBody]EspacioComun value)
        {
            try
            {
                ControlEspacioComun.devolverInstacia().grabar(value);
                return Ok(value);
            }
            catch (UsuarioException ex)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.BadRequest, ex.errores));
            }
        }

        // PUT: api/cliente/5
        public void Put(int id, [FromBody]EspacioComun value)
        {
            var espacio = ControlEspacioComun.devolverInstacia().devolver(id);
            espacio.nombre = value.nombre;
            espacio.capacidad = value.capacidad;
            espacio.estado = value.estado;
            espacio.descripcion = value.descripcion;
            espacio.fechaModificacion = DateTime.Now;
            espacio.idTipoEspacio = value.idTipoEspacio;

            ControlEspacioComun.devolverInstacia().grabar(espacio);
        }

        // DELETE: api/ApiCliente/5
        public void Delete(int id)
        {
            ControlEspacioComun.devolverInstacia().eliminar(id);
        }
    }
}
