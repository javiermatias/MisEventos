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
    public class EventoController : ApiController
    {
        // GET: api/Eventos
        public IEnumerable<Evento> Get([FromUri]String search)
        {

            if (search == null) search = "";

            return ControlEvento.devolverInstancia().devolverTodos(search);
        }

        public IEnumerable<Evento> GetEncargadosXevento([FromUri]int idEncargado)
        {
           
            return ControlEvento.devolverInstancia().devolverEventosEncargado(idEncargado);

        }

        // GET: api/Eventos
        public IEnumerable<Evento> GetEstado([FromUri]String estado)
        {

            if (estado == null) estado = "Nuevo";
            //return null;

             return ControlEvento.devolverInstancia().devolverTodosEvento(estado);
        }

        // GET: api/Eventos/5
        public Evento Get(int id)
        {
            return ControlEvento.devolverInstancia().devolver(id);
        }

   

        // POST: api/cliente
        public IHttpActionResult Post([FromBody]Evento value)
        {
            try
            {
                ControlEvento.devolverInstancia().grabar(value);
                return Ok(value);
            }
            catch (UsuarioException ex)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.BadRequest, ex.errores));
            }
        }

        // PUT: api/cliente/5
        public void Put([FromBody]Evento value)
        {
            ControlEvento.devolverInstancia().actualizar(value);
        }

        // DELETE: api/ApiCliente/5
        public void Delete(int id)
        {
            var Evento = ControlEvento.devolverInstancia().devolver(id);
            Evento.fechaBaja = DateTime.Now;

            ControlEvento.devolverInstancia().darDeBaja(Evento);
        }




        //[ActionName("inscriptos")]
        //[Route("{id}/inscriptos")]
        //[AcceptVerbs("GET")]
        //public IList<Inscripcion> GetInscriptos(int id)
        //{
        //    return ControlEvento.devolverInstancia().devolverInscriptos(id);
        //}

    }
}
