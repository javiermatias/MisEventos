using Renacer.Nucleo.Control;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Renacer.WebAPI.Controllers
{
    public class ActualizarEventoController : ApiController
    {
        // api/ActualizarEvento
        public void Get()
        {

          ControlEvento.devolverInstancia().actualizarEstadoEvento();
        }
    }
}
