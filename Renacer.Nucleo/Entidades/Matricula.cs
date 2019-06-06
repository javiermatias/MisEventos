using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Nucleo.Entidades
{
    [Table("Matricula")]
    public class Matricula
    {
        public int id { get; set; }
        public DateTime anio{ get; set; }

        public int valor{ get; set; }
        public DateTime fechaVencimiento { get; set; }
        
        public string estado { get; set; }

        public string estado2 { get; set; }


    }
}
