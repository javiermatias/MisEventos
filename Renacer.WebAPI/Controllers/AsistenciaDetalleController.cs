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
    public class AsistenciaDetalleController : ApiController
    {
        //id es iddetallevento
        public IEnumerable<AsistenciaDetalleEvento> Get([FromUri]int idEvento, [FromUri]int id)
        {
            //voy a tener todos los socios inscriptos
            List<Inscripcion> listaInscripciones = ControlInscripcion.devolverInstacia().devolverInscripcionEvento(idEvento);


            // IEnumerable<DetalleEvento> detalleEvento = ControlDetalleEvento.devolverInstancia().devolverTodos(evento.id);

            //List<AsistenciaSocio> listaAsistencia = new List<AsistenciaSocio>();
            //IEnumerable<DetalleEvento> detalleEvento = ControlDetalleEvento.devolverInstancia().devolverTodosXEncargado(idEvento);

            //foreach (var detalle in detalleEvento)
            //{
            //    AsistenciaSocio asistencia = new AsistenciaSocio();
            //    asistencia.fechaEvento = detalle.fechaDesde;
            //    if (detalle.asistencia)
            //    {
            //        asistencia.tomoAsistencia = true;
            //        Asistencia _asistencia = ControlAsistencia.devolverInstacia().devolverXdetalleEventoYSocio(detalle.id, idSocio);
            //        if (_asistencia != null) asistencia.asistio = true; // si asistio



            //    }


            //    listaAsistencia.Add(asistencia);
            //}

            //return listaAsistencia;
            return null;
        }
    }
}
