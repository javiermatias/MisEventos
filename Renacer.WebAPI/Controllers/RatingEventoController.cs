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
    public class RatingEventoController : ApiController
    {
        // GET: api/cliente
        public IEnumerable<RatingEvento> Get()
        {
            return ControlRating.devolverInstacia().devolverTodos();
        }
   

    
        // POST: api/cliente
        public IHttpActionResult Post([FromBody]RatingEvento value)
        {
            try
            {
                Inscripcion inscripcion = ControlInscripcion.devolverInstacia().devolverXsocioXevento(value.idEvento,value.idSocio);
                
                ControlRating.devolverInstacia().grabar(value);
                inscripcion.estadoEncuesta = true;
                ControlInscripcion.devolverInstacia().update(inscripcion);

                return Ok(value);
            }
            catch (Exception ex)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.BadRequest, ex.Data));
            }
        }

       
    }
}

