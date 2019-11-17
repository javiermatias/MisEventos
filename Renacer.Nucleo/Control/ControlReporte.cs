using Renacer.Helper;
using Renacer.Nucleo.Entidades;
using Renacer.Nucleo.Servicio;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Entity.Migrations;
using System.Linq;

namespace Renacer.Nucleo.Control
{
    public class ControlReporte
    {
        private static ControlReporte control;
        private string strConnection = "";

        private ControlReporte()
        {
            foreach (ConnectionStringSettings item in ConfigurationManager.ConnectionStrings)
            {
                if (item.Name == "ModeloRenacer")
                    strConnection = item.ConnectionString;
            }
        }
        public static ControlReporte GetInstance()
        {
            if (control == null) { control = new ControlReporte(); }
            return control;
        }
        public string GetSocioFilter(String sexo = "", string edadDesde = "", string edadHasta = "", string barrio = "")
        {
            var filter = "";

            if (sexo != "")
            {
                if (filter != "") filter += " AND ";
                filter = "S.sexo = '" + sexo + "'";
            }

            if (edadDesde != "")
            {
                if (filter != "") filter += " AND ";
                filter = "S.sexo = '" + edadDesde + "'";
            }

            //mandar mail 
            // guillermohintz@gmail.com

            return filter;
        }
        public long GetCount(string entidad)
        {
            long count = 0;
            switch (entidad)
            {
                case "cursos-en-progreso":
                    count = this.GetCursosEnProgresoCount(); break;
                case "eventos-finalizados":
                    count = this.GetEventosFinalizados(); break;
                case "eventos-nuevos":
                    count = this.GetEventosNuevos(); break;
                case "socios":
                    count = this.GetSociosActivosCount(); break;
                case "sociosSistema":
                    count = this.GetSociosSistemaCount(); break;
                case "asistencias":

                    count = this.GetAsistenciasCount(); break;
                    
                    
                    
                case "encargados":
                    count = this.GetEncargadosCount(); break;
                case "eventos":
                    count = this.GetEventosDetalleCount(); break;
                case "espacios":
                    count = this.GetEspaciosCount(); break;
            }

            return count;
        }
        public Dictionary<string, object> GetDashboard()
        {
            var DictResult = new Dictionary<string, object>();

            DictResult.Add("socios", this.GetSociosCount(new filterSocio()));
            DictResult.Add("encargados", this.GetEncargadosCount());
            DictResult.Add("asistencias", this.GetAsistenciasCount());

            return DictResult;
        }

        public Dictionary<string, object> GetRanking()
        {
            var DictResult = new Dictionary<string, object>();

            DictResult.Add("encargados", this.GetEncargadosRanking());
            DictResult.Add("eventos", this.GetEventosRanking());
            DictResult.Add("contenidos", this.GetContenidosRanking());
            DictResult.Add("general", this.GetFullRating());

            return DictResult;
        }

        private List<Dictionary<string, object>> GetEncargadosRanking()
        {
            var DbHelper = new DBBase(strConnection);
            var sql = $@"SELECT Concat(en.nombre,' ',en.apellido) as 'nombre',
                         SUM(r.ratingEncargado)/COUNT(r.id) as 'stars', 
                         COUNT(r.id) as 'cantidadVotos'  
                        FROM ratingevento r, evento e, encargado en where r.idEvento = e.id AND e.idEncargado = en.id
                        group by idEvento order by stars desc";

            return Helper.Helper.ConvertDT(DbHelper.ExecuteDataTable(sql));
        }
        private List<Dictionary<string, object>> GetEventosRanking()
        {
            return GetGenericRating("r.ratingEvento");
        }
        private List<Dictionary<string, object>> GetContenidosRanking()
        {
            return GetGenericRating("r.ratingContenido");
        }



        private List<Dictionary<string, object>> GetGenericRating(string ratingColName, int factor = 1)
        {
            var DbHelper = new DBBase(strConnection);
            var sql = $@"SELECT e.nombre,
                         SUM({ratingColName})/(COUNT(r.id)*{factor}) as 'stars', 
                         COUNT(r.id) as 'cantidadVotos'  
                        FROM ratingevento r, evento e where r.idEvento = e.id 
                        group by idEvento order by stars desc";

            var lista = Helper.Helper.ConvertDT(DbHelper.ExecuteDataTable(sql));

            var i = 1;
            foreach(Dictionary<string,object> item in lista) {
                item.Add("orden", i);
                i++;
            }

            return lista;
        }

        public List<Dictionary<string, object>> GetInscriptosPorTipoEvento()
        {
            var sql = $@"select t.nombre, COUNT(i.id) as 'cantidad' from inscripcion i
                        inner join evento e on e.id = i.IdEvento
                        inner join tipoevento t on t.id = e.IdTipoEvento
                        where i.fechaBaja is null
                        group by t.nombre";
            var DbHelper = new DBBase(strConnection);
            return Helper.Helper.ConvertDT(DbHelper.ExecuteDataTable(sql));
        }
        public List<Dictionary<string, object>> GetAsistenciasPorTipoEvento()
        {
            var DbHelper = new DBBase(strConnection);
            var sql = @"
SELECT
	t.nombre,
	count(a.id) AS asistencias,
    count(i.id) as inscriptos
FROM
	tipoevento t 
inner join evento e on t.id = e.IdTipoEvento
inner join detalleevento de on e.id = de.IdEvento 
inner join inscripcion i on i.idEvento = e.id
left join asistencia a on a.idDetalleEvento = de.id
GROUP BY
	t.nombre
";
            return Helper.Helper.ConvertDT(DbHelper.ExecuteDataTable(sql));

        }

        public List<Dictionary<string, object>> GetAsistenciasPorDiaDeLaSemana()
        {
            var DbHelper = new DBBase(strConnection);
            var sql = @"
select count(id) as cantidad,
CASE
WHEN DAYOFWEEK(fechaAsistencia) = 1 THEN 'Lunes'
WHEN DAYOFWEEK(fechaAsistencia) = 2 THEN 'Martes'
WHEN DAYOFWEEK(fechaAsistencia) = 3 THEN 'Miércoles'
WHEN DAYOFWEEK(fechaAsistencia) = 4 THEN 'Jueves'
WHEN DAYOFWEEK(fechaAsistencia) = 5 THEN 'Viernes'
WHEN DAYOFWEEK(fechaAsistencia) = 6 THEN 'Sabado'
WHEN DAYOFWEEK(fechaAsistencia) = 7 THEN 'Domingo'
END as dia
from asistencia
where DAYOFWEEK(fechaAsistencia) is not null
group by DAYOFWEEK(fechaAsistencia)
";
            return Helper.Helper.ConvertDT(DbHelper.ExecuteDataTable(sql));

        }

        public List<Dictionary<string, object>> GetEventosPorTipo()
        {
            var DbHelper = new DBBase(strConnection);
            var sql = $@"SELECT t.nombre, count(e.id) as cantidad FROM  tipoevento t, evento e where t.id = e.idTipoEvento group by t.id";
            return Helper.Helper.ConvertDT(DbHelper.ExecuteDataTable(sql));
        }

        public List<Dictionary<string, object>> GetIngresosPorTipoEvento()
        {
            var DbHelper = new DBBase(strConnection);
            var sql = $@"
    SELECT
        SUM(p.monto) AS monto,
        t.nombre
	FROM pago p
		inner join inscripcion i on i.id = p.idInscripcion
	    inner join evento e on e.id = i.idEvento
        inner join tipoevento t on t.id = e.idTipoEvento
	WHERE
		estaPagado = 1
    GROUP BY 
        e.idTipoEvento
";
            return Helper.Helper.ConvertDT(DbHelper.ExecuteDataTable(sql));
        }

        public List<Dictionary<string, object>> GetIngresosPorTipo(FilterDateRange rango)
        {
            var DbHelper = new DBBase(strConnection);
            var sql = $@"SELECT 'Matriculas' as nombre, SUM(pago) AS monto, COUNT(pago) AS cantidad FROM matriculaxsocios 
                   where {filterRangeDate(rango, "fechaPago")} 
                        union all 
                        SELECT 'Eventos' as nombre, SUM(monto) AS monto, COUNT(monto) FROM pago where estaPagado = 1 AND {filterRangeDate(rango, "fechaCobro")}";
            return Helper.Helper.ConvertDT(DbHelper.ExecuteDataTable(sql));
        }

        

        public List<Dictionary<string, object>> GetIngresosEnElTiempo(FilterDateRange rango)
        {
            var DbHelper = new DBBase(strConnection);
            var sql = $@"
                SELECT aux.fecha,SUM(aux.matriculas) as 'matriculas',SUM(aux.eventos) as 'eventos' from (
                SELECT
	                SUM(pago) AS 'matriculas',
	                0 as 'eventos',
	                DATE_FORMAT(fechaPago, '%Y-%m') as 'fecha'
                FROM
	                matriculaxsocios  where {filterRangeDate(rango,"fechaPago")}  group by fecha 
                UNION ALL
                SELECT
	                0 AS 'matriculas',
	                SUM(monto) as 'eventos',
	                DATE_FORMAT(fechaCobro, '%Y-%m') as 'fecha'
                FROM pago WHERE estaPagado = 1 AND {filterRangeDate(rango, "fechaCobro")} 
                    group by fecha	) as aux group by fecha order by fecha
";

            var tabla = DbHelper.ExecuteDataTable(sql);
            return Helper.Helper.ConvertDT(tabla);

        }


        public List<Dictionary<string, object>> CantidadIngresosEnElTiempo(FilterDateRange rango)
        {
            var DbHelper = new DBBase(strConnection);
            var sql = $@"
                SELECT SUM(aux.matriculas) as 'Matriculas',SUM(aux.eventos) as 'Eventos' from (
                SELECT
	                COUNT(pago) AS 'matriculas',
	                0 as 'eventos',
	                DATE_FORMAT(fechaPago, '%Y-%m') as 'fecha'
                FROM
	                matriculaxsocios  where {filterRangeDate(rango, "fechaPago")}   
                UNION ALL
                SELECT
	                0 AS 'matriculas',
	                COUNT(monto) as 'eventos',
	                DATE_FORMAT(fechaCobro, '%Y-%m') as 'fecha'
                FROM pago WHERE estaPagado = 1 AND {filterRangeDate(rango, "fechaCobro")} 
                    group by fecha	) as aux 
";

            var tabla = DbHelper.ExecuteDataTable(sql);
            return Helper.Helper.ConvertDT(tabla);

        }



        public string filterRangeDate(FilterDateRange rango, string nombreCampo = "fecha") {
            var filter = "1=1";

            if (rango.fechaInicio > DateTime.MinValue) filter += $" AND {nombreCampo} >= '{rango.fechaInicio.ToString("yyyy-MM-dd")}'";
            if (rango.fechaFin > DateTime.MinValue) filter += $" AND {nombreCampo} <= '{rango.fechaFin.ToString("yyyy-MM-dd")}'";
            return $"({filter})";
        }


        private List<Dictionary<string, object>> GetFullRating()
        {
            return GetGenericRating("r.ratingEvento + r.ratingEncargado + r.ratingContenido", 3);
        }


        private Int64 GetSociosSistemaCount()
        {
            var DbHelper = new DBBase(strConnection);
            return (Int64)DbHelper.ExecuteScalar("SELECT COUNT(*) FROM socio where ISNULL(fechaBaja)");
        }

        private Int64 GetSociosActivosCount()
        {
            var DbHelper = new DBBase(strConnection);
            return (Int64)DbHelper.ExecuteScalar("SELECT COUNT(*) FROM socio where ISNULL(fechaBaja) AND Estado = 'Activo'");
        }



        private Int64 GetSociosCount(filterSocio filtro)
        {
            var DbHelper = new DBBase(strConnection);
            var sql = @"SELECT COUNT(s.id) FROM socio s {filtro_socio} and ISNULL(s.fechaBaja)";
            sql = sql.Replace("{filtro_socio}", filtro.getFilterSqlSocio());
            return (Int64)DbHelper.ExecuteScalar(sql);
        }


        private Int64 GetEncargadosCount()
        {
            var DbHelper = new DBBase(strConnection);
            return (Int64)DbHelper.ExecuteScalar("SELECT COUNT(*) FROM encargado where ISNULL(fechaBaja)");
        }
        private Int64 GetCursosEnProgresoCount()
        {
            var DbHelper = new DBBase(strConnection);
            return (Int64)DbHelper.ExecuteScalar("SELECT COUNT(*) FROM evento where ISNULL(fechaBaja) AND Estado = 'Progreso'");
        }

        private Int64 GetEventosFinalizados()
        {
            var DbHelper = new DBBase(strConnection);
            return (Int64)DbHelper.ExecuteScalar("SELECT COUNT(*) FROM evento where ISNULL(fechaBaja) AND Estado = 'Finalizado'");
        }

        private Int64 GetEventosNuevos()
        {
            var DbHelper = new DBBase(strConnection);
            return (Int64)DbHelper.ExecuteScalar("SELECT COUNT(*) FROM evento where ISNULL(fechaBaja) AND Estado = 'Nuevo'");
        }



        private Int64 GetEspaciosCount()
        {
            var DbHelper = new DBBase(strConnection);
            return (Int64)DbHelper.ExecuteScalar("SELECT COUNT(*) FROM espaciocomun where ISNULL(fechaBaja)");
        }
        private Int64 GetEventosDetalleCount()
        {
            var DbHelper = new DBBase(strConnection);
            return (Int64)DbHelper.ExecuteScalar("SELECT COUNT(*) FROM detalleevento where fechaDesde < NOW() AND ISNULL(fechaBaja)");
        }

        private Int64 GetEventosDetalleFinalizados()
        {
            var DbHelper = new DBBase(strConnection);
            return (Int64)DbHelper.ExecuteScalar("SELECT COUNT(*) FROM detalleevento where fechaHasta < NOW() AND ISNULL(fechaBaja)");
        }

     


        private Int64 GetAsistenciasCount()
        {
            var DbHelper = new DBBase(strConnection);
            return (Int64)DbHelper.ExecuteScalar("SELECT COUNT(*) FROM asistencia");
        }

        public List<Dictionary<string, object>> GetSocios(filterSocio filtro)
        {
            var DbHelper = new DBBase(strConnection);
            var sql = @"SELECT s.* FROM socio s {filtro_socio} and ISNULL(s.fechaBaja)";
            sql = sql.Replace("{filtro_socio}", filtro.getFilterSqlSocio());
            var tabla = DbHelper.ExecuteDataTable(sql);
            return Helper.Helper.ConvertDT(tabla);
        }
        public List<Dictionary<string, object>> GetCrecimientoSocios(filterSocio filtro)
        {
            var DbHelper = new DBBase(strConnection);
            var sql = @"SELECT aux.fecha,MAX(aux.bajas) as 'bajas',MAX(aux.altas) as 'altas' from ( 
                            SELECT 
                            DATE_FORMAT(s.fechaCreacion, '%Y-%m') as 'fecha', Count(s.id) as 'altas',0 as 'bajas'
                            FROM socio s {filtro_socio} 
                            GROUP BY DATE_FORMAT(s.fechaCreacion, '%Y-%m') 
                        UNION ALL SELECT
                            DATE_FORMAT(s.fechaBaja, '%Y-%m') as 'fecha', 0 as 'altas', Count(s.id) as 'bajas'
                            FROM socio s {filtro_socio} and not ISNULL(s.fechaBaja)
                            GROUP BY DATE_FORMAT(s.fechaBaja, '%Y-%m')) as aux
                        GROUP BY aux.fecha";

            sql = sql.Replace("{filtro_socio}", filtro.getFilterSqlSocio());
            var tabla = DbHelper.ExecuteDataTable(sql);
            return Helper.Helper.ConvertDT(tabla);

        }
        public List<Dictionary<string, object>> GetSociosPorEdad(filterSocio filtro)
        {
            var DbHelper = new DBBase(strConnection);
            var sql = @"select TIMESTAMPDIFF(YEAR, s.fechaNacimiento, CURDATE()) as 'edad' ,Count(s.id) as 'count' 
                          FROM socio s {filtro_socio} and ISNULL(s.fechaBaja)  GROUP BY TIMESTAMPDIFF(YEAR, s.fechaNacimiento, CURDATE())";

            sql = sql.Replace("{filtro_socio}", filtro.getFilterSqlSocio());
            var tabla = DbHelper.ExecuteDataTable(sql);
            return Helper.Helper.ConvertDT(tabla);
        }

        public DataTable ExecuteDataTable(string consulta)
        {
            var DbHelper = new DBBase(strConnection);
            var tabla = DbHelper.ExecuteDataTable(consulta);
            return tabla;
        }

        public object ExecuteScalar(string consulta)
        {
            var DbHelper = new DBBase(strConnection);
            return DbHelper.ExecuteScalar(consulta);
        }


        public List<Dictionary<string, object>> GetTagsPorSocios(filterSocio filtro)
        {
            var DbHelper = new DBBase(strConnection);
            var sql = String.Format(@"SELECT
	ts.Tag_id as 'id',
    t.nombre,
	COUNT(ts.Tag_id) as 'cantidad'
FROM
	{0} ts INNER JOIN tags t on t.id = ts.Tag_id
WHERE
	ts.Socio_id IN (
		SELECT
			s.id AS 'Socio_id'
        FROM
            socio s {1}
	)
GROUP BY
    ts.Tag_id",
    "sociotags",
    filtro.getFilterSqlSocio());

            var tabla = DbHelper.ExecuteDataTable(sql);
            return Helper.Helper.ConvertDT(tabla);
        }

        public class filterSocio
        {
            public string sexo;
            public string edadDesde;
            public string edadHasta;
            public string fechaDesde;
            public string fechaHasta;
            public string estadoCivil;
            public string barrio;
            public List<Tag> Tags;

            public string getFilterSqlSocio(string alias = "s")
            {
                var filter = "";
                filter += getJoinDomicilio();
                filter += getJoinTagsSocios();
                filter += " WHERE 1=1 ";

                filter += GetTagIdsFilter();

                if (this.sexo != null && this.sexo != "")
                {
                    if (filter != "") filter += " AND ";
                    filter += alias + ".sexo='" + this.sexo + "'";
                }
                if (this.estadoCivil != null && this.estadoCivil != "")
                {
                    if (filter != "") filter += " AND ";
                    filter += alias + ".estadoCivil='" + this.estadoCivil + "'";
                }

                if (this.edadDesde != null && this.edadDesde != "")
                {
                    if (filter != "") filter += " AND ";
                    filter += alias + ".fechaNacimiento < DATE_SUB(NOW(),INTERVAL " + this.edadDesde + " YEAR) ";
                }

                if (this.edadHasta != null && this.edadHasta != "")
                {
                    if (filter != "") filter += " AND ";
                    filter += alias + ".fechaNacimiento > DATE_SUB(NOW(),INTERVAL " + this.edadHasta + " YEAR) ";
                }

                if (this.fechaDesde != null && this.fechaDesde != "")
                {
                    if (filter != "") filter += " AND ";
                    filter += alias + ".fechaCreacion > '" + this.fechaDesde + "'";
                }

                if (this.fechaHasta != null && this.fechaHasta != "")
                {
                    if (filter != "") filter += " AND ";
                    filter += alias + ".fechaCreacion < '" + this.fechaHasta + "'";
                }





                if (this.barrio != null && this.barrio != "")
                {
                    if (filter != "") filter += " AND ";
                    filter += " d.barrio = '" + this.barrio + "'";
                }

                return filter;
            }

            private string getJoinTagsSocios()
            {
                if (this.Tags == null || this.Tags.Count == 0) return "";

                return " LEFT JOIN sociotags ts2 on ts2.Socio_id = s.id ";
            }

            private string getJoinDomicilio()
            {
                if (this.barrio == null || this.barrio == "") return "";
                return " LEFT JOIN domicilio d on d.id = s.idDomicilio ";
            }

            public string getFilterSqlDomicilio(string alias = "s")
            {
                if (this.barrio != "") return "";

                return " LEFT JOIN domicilio d on " + alias + ".idDomicilio = d.id WHERE " +
                      "d.barrio = '" + this.barrio + "'";
            }

            public string GetTagIdsFilter()
            {
                if (this.Tags == null) return "";

                var idTags = "";
                foreach (var item in this.Tags)
                {
                    if (idTags != "") idTags += ",";
                    idTags += item.id;
                }
                if (idTags == "") return "";
                return " AND ts2.Tag_id IN (" + idTags + ")";
            }
        }
    }

    public class FilterDateRange
    {
        public DateTime fechaInicio;
        public DateTime fechaFin;
    }
}


