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
    public class CalendarioController : ApiController
    {
        public IEnumerable<Calendario> Get([FromUri]DateTime fechaDesde, [FromUri]DateTime fechaHasta)
        {
            IEnumerable<Calendario> detalle = ControlDetalleEvento.devolverInstancia().devolverTodosCalendario(fechaDesde, fechaHasta);
            return detalle;

        }
    }
}
