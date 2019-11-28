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
        public List<Dictionary<string, object>> GetCrecimientoSocios([FromBody] FilterDateRange filter)
        {
            return ControlReporte.GetInstance().GetCrecimientoSocios(filter);
        }

        [ActionName("socios-por-edad")]
        [Route("socios-por-edad")]
        [AcceptVerbs("POST")]
        public List<Dictionary<string, object>> GetSociosPorEdad([FromBody] FilterDateRange filter)
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
        public Dictionary<string, object> GetRanking(FilterRanking filtro)
        {
            return ControlReporte.GetInstance().GetRanking(filtro);
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
        public List<Dictionary<string, object>> GetIngresosPorTipo([FromBody] FilterDateRange filter)
        {
            return ControlReporte.GetInstance().GetIngresosPorTipo(filter);
        }

        [ActionName("ingresosportipoevento")]
        [Route("ingresosportipoevento")]
        [AcceptVerbs("POST")]
        public List<Dictionary<string, object>> GetIngresosPorTipoEvento([FromBody] FilterDateRange filter)
        {
            return ControlReporte.GetInstance().GetIngresosPorTipoEvento(filter);
        }

        [ActionName("sociosmasactivos")]
        [Route("sociosmasactivos")]
        [AcceptVerbs("POST")]
        public List<Dictionary<string, object>> GetSociosMasActivos([FromBody] FilterDateRange filter)
        {
            return ControlReporte.GetInstance().GetSociosMasActivos(filter);
        }



        //GetSociosMasActivos()
        [ActionName("ingresoseneltiempo")]
        [Route("ingresoseneltiempo")]
        [AcceptVerbs("POST")]
        public List<Dictionary<string, object>> GetIngresosEnElTiempo([FromBody] FilterDateRange filter)
        {
            return ControlReporte.GetInstance().GetIngresosEnElTiempo(filter);
        }

        public List<Dictionary<string, object>> CantidadIngresosEnElTiempo([FromBody] FilterDateRange filter)
        {
            return ControlReporte.GetInstance().CantidadIngresosEnElTiempo(filter);
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
        public List<Dictionary<string, object>> GetInasistenciasPorTipoEvento([FromBody] FilterDateRange filter)
        {
            return ControlReporte.GetInstance().GetAsistenciasPorDiaDeLaSemana(filter);
        }

        [ActionName("asistenciaspordiadelasemana")]
        [Route("asistenciaspordiadelasemana")]
        [AcceptVerbs("POST")]
        public List<Dictionary<string, object>> GetAsistenciasPorDiaDeLaSemana([FromBody] FilterDateRange filter)
        {
            return ControlReporte.GetInstance().GetAsistenciasPorDiaDeLaSemana(filter);
        }

        [ActionName("asistenciasporevento")]
        [Route("asistenciasporevento")]
        [AcceptVerbs("POST")]
        public Dictionary<string, int> asistenciasSocioXevento([FromBody]int idEvento)
        {
            AsistenciaDetalleController controller = new AsistenciaDetalleController();
            return controller.GetAsistenciaXSocio(idEvento);
        }

        //ROl socioGetSocioInteresesCount(int idSocio)

        [ActionName("getsociointereses")]
        [Route("getsociointereses")]
        [AcceptVerbs("POST")]
        public Int64 socioGetSocioInteresesCount([FromBody]int idSocio)
        {
           // return 0;
            return ControlReporte.GetInstance().GetSocioInteresesCount(idSocio);
            // return ControlReporte.GetInstance().GetSocioInteresesCount(idSocio);
        }
    }
}
