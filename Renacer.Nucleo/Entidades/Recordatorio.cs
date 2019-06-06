using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Nucleo.Entidades
{
    public class Recordatorio
    {
        public int id { get; set; }        

        public string titulo { get; set; }
        public string descripcion { get; set; }

        public DateTime fechaRecordatorio { get; set; }

        // public DateTime fechaRecordatorio { get; set; }
    }
}
