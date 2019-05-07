using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Nucleo.Entidades
{
    public class Matricula
    {
        public int id { get; set; }
        public DateTime anio{ get; set; }

        public int valor;

        public DateTime fechaVencimiento { get; set; }
        
        public string estado { get; set; }
    }
}
