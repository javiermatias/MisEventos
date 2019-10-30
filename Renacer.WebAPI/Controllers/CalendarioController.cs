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
        public IEnumerable<Calendario> Get([FromUri]DateTime fechaDesde,
            [FromUri]DateTime fechaHasta,
            [FromUri] int idEspacio)
        {

            var usuarioActual = ControlUsuario.devolverInstancia().devolverPorUsuario(User.Identity.Name);

            IEnumerable<Calendario> detalle = ControlDetalleEvento.devolverInstancia().devolverTodosCalendario(fechaDesde, fechaHasta, idEspacio);

            if (usuarioActual.rol == "SOCIO") {
                IEnumerable<Inscripcion> inscripciones = ControlInscripcion.devolverInstacia().
                    devolverInscripcionXSocio(usuarioActual.idSocio.Value);

                detalle = detalle.Where(x => inscripciones.Select(y => y.idEvento).Contains(x.idEvento)).ToList();
            }
            return detalle;
        }
    }
}
