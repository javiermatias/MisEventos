using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Nucleo.Entidades
{
    [Table("Domicilio")]
    public class Domicilio
    {
        [Key]
        public int id { get; set; }
        public string barrio { get; set; }
        public string calle { get; set; }
        public string piso { get; set; }
        public string nro { get; set; }
        public Int32 codPostal { get; set; }
        public string depto { get; set; }

    }
}
