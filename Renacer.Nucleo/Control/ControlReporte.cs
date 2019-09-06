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
                case "cursos":
                    count = this.GetCursosCount(); break;
                case "socios":
                    count = this.GetSociosCount(new filterSocio()); break;
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
        private Int64 GetCursosCount()
        {
            var DbHelper = new DBBase(strConnection);
            return (Int64)DbHelper.ExecuteScalar("SELECT COUNT(*) FROM evento where ISNULL(fechaBaja)");
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
        private Int64 GetAsistenciasCount()
        {
            var DbHelper = new DBBase(strConnection);
            return (Int64)DbHelper.ExecuteScalar("SELECT COUNT(*) FROM socioasistencias");
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

}


