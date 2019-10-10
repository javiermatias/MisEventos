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
    public class DeudasCuotasController : ApiController
    {

        //public IEnumerable<Evento> Get([FromUri]int idEvento)
        //{

        //    if (search == null) search = "";

        //    return ControlEvento.devolverInstancia().devolverTodos(search);
        //}


        public void Get([FromUri]int idEvento) {

            Evento evento = ControlEvento.devolverInstancia().devolver(idEvento);
            List<DeudaCuota> listaIDeudores = new List<DeudaCuota>();

            foreach (var inscripcion in evento.listaInscripciones)
            {

            }
    }
    }
}
