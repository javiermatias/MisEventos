using Renacer.Nucleo;
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
    [RoutePrefix("api/reporte")]
    public class ReporteController : ApiController
    {

        // GET: api/comun/tiposDocumentos
        [ActionName("tags")]
        [Route("tags")]
        [AcceptVerbs("POST")]
        public List<Dictionary<string, object>> Get([FromBody] ControlReporte.filterSocio filter)
        {
            return ControlReporte.GetInstance().GetTagsPorSocios(filter);
        }

        [ActionName("socios")]
        [Route("socios")]
        [AcceptVerbs("POST")]
        public List<Dictionary<string, object>> GetSocios([FromBody] ControlReporte.filterSocio filter)
        {
            return ControlReporte.GetInstance().GetSocios(filter);
        }
        [ActionName("crecimiento-socios")]
        [Route("crecimiento-socios")]
        [AcceptVerbs("POST")]
        public List<Dictionary<string, object>> GetCrecimientoSocios([FromBody] ControlReporte.filterSocio filter)
        {
            return ControlReporte.GetInstance().GetCrecimientoSocios(filter);
        }

        [ActionName("socios-por-edad")]
        [Route("socios-por-edad")]
        [AcceptVerbs("POST")]
        public List<Dictionary<string, object>> GetSociosPorEdad([FromBody] ControlReporte.filterSocio filter)
        {
            return ControlReporte.GetInstance().GetSociosPorEdad(filter);
        }



        [ActionName("dashboard")]
        [Route("dashboard")]
        [AcceptVerbs("POST")]
        public Dictionary<string, object> GetDashboard()
        {
            return ControlReporte.GetInstance().GetDashboard();
        }

        [ActionName("count")]
        [Route("count")]
        [AcceptVerbs("GET")]
        public object GetCount([FromUri] String Entidad)
        {
            var result = new Dictionary<string, long>();
            result.Add("count", ControlReporte.GetInstance().GetCount(Entidad));
            return result;
        }



        [ActionName("ranking")]
        [Route("ranking")]
        [AcceptVerbs("POST")]
        public Dictionary<string, object> GetRanking()
        {
            return ControlReporte.GetInstance().GetRanking();
        }

        [ActionName("eventosportipo")]
        [Route("eventosportipo")]
        [AcceptVerbs("POST")]
        public List<Dictionary<string, object>> GetEventosPorTipo()
        {
            return ControlReporte.GetInstance().GetEventosPorTipo();
        }

        [ActionName("ingresosportipo")]
        [Route("ingresosportipo")]
        [AcceptVerbs("POST")]
        public List<Dictionary<string, object>> GetIngresosPorTipo()
        {
            return ControlReporte.GetInstance().GetIngresosPorTipo();
        }

        [ActionName("ingresosportipoevento")]
        [Route("ingresosportipoevento")]
        [AcceptVerbs("POST")]
        public List<Dictionary<string, object>> GetIngresosPorTipoEvento()
        {
            return ControlReporte.GetInstance().GetIngresosPorTipoEvento();
        }

        [ActionName("ingresoseneltiempo")]
        [Route("ingresoseneltiempo")]
        [AcceptVerbs("POST")]
        public List<Dictionary<string, object>> GetIngresosEnElTiempo([FromBody] ControlReporte.filterSocio filter)
        {
            return ControlReporte.GetInstance().GetIngresosEnElTiempo();
        }

        [ActionName("asistenciasportipoevento")]
        [Route("asistenciasportipoevento")]
        [AcceptVerbs("POST")]
        public List<Dictionary<string, object>> GetAsistenciasPorTipoEvento([FromBody] ControlReporte.filterSocio filter)
        {
            return ControlReporte.GetInstance().GetAsistenciasPorTipoEvento();
        }


        [ActionName("inasistenciasportipoevento")]
        [Route("inasistenciasportipoevento")]
        [AcceptVerbs("POST")]
        public List<Dictionary<string, object>> GetInasistenciasPorTipoEvento([FromBody] ControlReporte.filterSocio filter)
        {
            return ControlReporte.GetInstance().GetAsistenciasPorDiaDeLaSemana();
        }

        [ActionName("asistenciaspordiadelasemana")]
        [Route("asistenciaspordiadelasemana")]
        [AcceptVerbs("POST")]
        public List<Dictionary<string, object>> GetAsistenciasPorDiaDeLaSemana([FromBody] ControlReporte.filterSocio filter)
        {
            return ControlReporte.GetInstance().GetAsistenciasPorDiaDeLaSemana();
        }


    }
}
