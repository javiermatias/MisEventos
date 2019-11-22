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
    public class AsistenciaEventoController : ApiController
    {


        public IEnumerable<AsistenciaEvento> Get(/*[FromUri]int idEvento, [FromUri]int idSocio*/)
        {
            List<AsistenciaEvento> listaEventosAux = new List<AsistenciaEvento>();
            int cantidadAsistenciasTomadas = 0;
            int cantidadAsistencias = 0;
            AsistenciaEvento asistenciaEvento;
            List<Evento> listaEventos = ControlEvento.devolverInstancia().devolverTodos("");
            foreach (var evento in listaEventos)
            {
                if (evento.fechaBaja != null || evento.estado=="Nuevo")
                {
                    continue;
                }
                cantidadAsistenciasTomadas = 0;
                cantidadAsistencias = 0;
                asistenciaEvento = new AsistenciaEvento();
                IEnumerable<DetalleEvento> detalleEvento = ControlDetalleEvento.devolverInstancia().devolverTodos(evento.id);
                foreach (var item in detalleEvento)
                {
                    if (item.asistencia)
                    {
                        cantidadAsistenciasTomadas++;
                        cantidadAsistencias++;
                    }
                    else {

                        cantidadAsistencias++;
                    }

                }
                
                var roundedA = (Math.Round((double)((double)cantidadAsistenciasTomadas / (double)cantidadAsistencias), 1)) * 100; 

                asistenciaEvento.evento = evento;

             
                asistenciaEvento.porcentajeAsistencia = (int)(roundedA);
            
                listaEventosAux.Add(asistenciaEvento);
           
                Console.WriteLine("cantAsistencias:" + cantidadAsistencias + "asistenciasTomadas" + cantidadAsistenciasTomadas + "Redondeado" + roundedA);

            }
            return listaEventosAux;
        }

        public IEnumerable<AsistenciaEvento> Get([FromUri]int idEncargado/* [FromUri]int idSocio*/)
        {

            List<AsistenciaEvento> listaEventosAux = new List<AsistenciaEvento>();
            int cantidadAsistenciasTomadas = 0;
            int cantidadAsistencias = 0;
            AsistenciaEvento asistenciaEvento;
            List<Evento> listaEventos = ControlEvento.devolverInstancia().devolverEventosEncargado(idEncargado);
            foreach (var evento in listaEventos)
            {
                if (evento.fechaBaja != null || evento.estado == "Nuevo")
                {
                    continue;
                }
                cantidadAsistenciasTomadas = 0;
                cantidadAsistencias = 0;
                asistenciaEvento = new AsistenciaEvento();
                IEnumerable<DetalleEvento> detalleEvento = ControlDetalleEvento.devolverInstancia().devolverTodos(evento.id);
                foreach (var item in detalleEvento)
                {
                    if (item.asistencia)
                    {
                        cantidadAsistenciasTomadas++;
                        cantidadAsistencias++;
                    }
                    else
                    {

                        cantidadAsistencias++;
                    }

                }

                var roundedA = (Math.Round((double)((double)cantidadAsistenciasTomadas / (double)cantidadAsistencias), 1)) * 100;

                asistenciaEvento.evento = evento;


                asistenciaEvento.porcentajeAsistencia = (int)(roundedA);

                listaEventosAux.Add(asistenciaEvento);

                Console.WriteLine("cantAsistencias:" + cantidadAsistencias + "asistenciasTomadas" + cantidadAsistenciasTomadas + "Redondeado" + roundedA);

            }
            return listaEventosAux;
        }

        //public IEnumerable<AsistenciaEvento> Get([FromUri]int idSocio/* [FromUri]int idSocio*/)
        //{

        //    return null;
        //}
    }
}
