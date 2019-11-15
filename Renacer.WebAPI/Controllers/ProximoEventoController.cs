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
    public class ProximoEventoController : ApiController
    {

        public IEnumerable<ProximoEvento> Get()
        {
            List<ProximoEvento> listaProximoEventos = new List<ProximoEvento>();
            List<Evento> listaEventos = ControlEvento.devolverInstancia().devolverProximosEventos();

            foreach (var evento in listaEventos)
            {
                if (evento.fechaDesde>=DateTime.Now)
                {
                    ProximoEvento proximo = new ProximoEvento();
                    proximo.nombre = evento.nombre;
                    proximo.descripcion = evento.descripcion;
                    proximo.fechaDesde = evento.fechaDesde;
                    proximo.fechaHasta = evento.fechaHasta;
                    proximo.fechaDesdeInscripcion = evento.fechaDesdeInscripcion;
                    proximo.fechaHastaInscripcion = evento.fechaHastaInscripcion;
                    proximo.cupoMinimo = evento.cupoMinimo;
                    proximo.cupoMaximo = evento.cupoMaximo;
                    proximo.cantidadInscriptos = evento.listaInscripciones.Count;
                    listaProximoEventos.Add(proximo);
                }
              




            }

            return listaProximoEventos;



    }
}
}