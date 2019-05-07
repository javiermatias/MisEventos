using Renacer.Nucleo.Controlmatricula;
using Renacer.Nucleo.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Renacer.WebAPI.Controllers
{
    public class MatriculaController : ApiController
    {
        // GET: api/cliente
        public IEnumerable<Matricula> Get()
        {
            return ControlMatricula.devolverInstacia().devolverTodos();
        }

        // GET: api/cliente/5
        public Matricula Get(int id)
        {
            return ControlMatricula.devolverInstacia().devolver(id);
        }

        // POST: api/cliente
        public IHttpActionResult Post([FromBody]Matricula value)
        {
            try
            {
                ControlMatricula.devolverInstacia().grabar(value);
                return Ok(value);
            }
            catch (UsuarioException ex)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.BadRequest, ex.errores));
            }
        }

        // PUT: api/cliente/5
        public void Put(int id, [FromBody]Matricula value)
        {
            //var espacio = ControlMatricula.devolverInstacia().devolver(id);
            //espacio.nombre = value.nombre;
            //espacio.capacidad = value.capacidad;
            //espacio.estado = value.estado;
            //espacio.descripcion = value.descripcion;
            //espacio.fechaModificacion = DateTime.Now;
            //espacio.idMatricula = value.idMatricula;

            ControlMatricula.devolverInstacia().grabar(value);
        }

        // DELETE: api/ApiCliente/5
        public void Delete(int id)
        {
            ControlMatricula.devolverInstacia().eliminar(id);
        }
    }
}
