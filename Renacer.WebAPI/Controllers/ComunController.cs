using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Renacer.Nucleo;
using Renacer.Nucleo.Control;
using Renacer.Nucleo.Entidades;


namespace Renacer.WebAPI.Controllers
{
    public class ComunController : ApiController
    {
        // GET: api/comun/tiposDocumentos
        [ActionName("tiposDocumentos")]
        public IEnumerable<TipoDocumento> Get()
        {
            return ControlSocio.devolverInstancia().devolverTiposDocumentos();
        }
    }
}
