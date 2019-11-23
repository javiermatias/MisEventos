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
            List<Asistencia> listaAsistencias = ControlAsistencia.devolverInstacia().devolverAsistenciaDetalleEvento(id);
            List<AsistenciaDetalleEvento> listaAux = new List<AsistenciaDetalleEvento>();

            foreach (var inscripcion in listaInscripciones)
            {
                AsistenciaDetalleEvento asistenciaDetalle = new AsistenciaDetalleEvento();
                asistenciaDetalle.socio = inscripcion.socio;
                var bandera = false;
                foreach (var asistencia in listaAsistencias)
                {
                    
                    if (inscripcion.socio.id == asistencia.idSocio) {


                        bandera = true;


                    }

                }

                if (bandera)
                {
                    asistenciaDetalle.asistio = true;
                }
                else {
                    asistenciaDetalle.asistio = false;
                }
                listaAux.Add(asistenciaDetalle);


            }

          
            return listaAux;
        }
    }
}
