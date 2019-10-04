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
    public class AsistenciaSocioController : ApiController
    {

        public IEnumerable<AsistenciaSocio> Get([FromUri]int idEvento, [FromUri]int idSocio)
        {

            List<AsistenciaSocio> listaAsistencia = new List<AsistenciaSocio>();
            IEnumerable<DetalleEvento> detalleEvento = ControlDetalleEvento.devolverInstancia().devolverTodosXEncargado(idEvento);

            foreach (var detalle in detalleEvento)
            {
                AsistenciaSocio asistencia = new AsistenciaSocio();
                asistencia.fechaEvento = detalle.fechaDesde;
                if (detalle.asistencia)
                {
                    asistencia.tomoAsistencia = true;
                    Asistencia _asistencia = ControlAsistencia.devolverInstacia().devolverXdetalleEventoYSocio(detalle.id, idSocio);
                    if (_asistencia != null) asistencia.asistio = true; // si asistio



                }


                listaAsistencia.Add(asistencia);
            }

            return listaAsistencia;
        }
    }
}
