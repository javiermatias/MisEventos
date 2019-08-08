using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Nucleo.Entidades
{
    public class Calendario
    {
        public int id { get; set; }
        public string nombre { get; set; }
        public string descripcion { get; set; }
        public string dia { get; set; }
        public DateTime fechaDesde { get; set; }
        public DateTime fechaHasta { get; set; }
        public int idEvento { get; set; }
        public string encargado { get; set; }
        public string aula { get; set; }
    }
}
