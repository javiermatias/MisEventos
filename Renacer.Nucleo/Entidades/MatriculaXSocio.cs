using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Nucleo.Entidades
{
    public class MatriculaXSocio
    {

        [Key]
        public int id { get; set; }

        public int idSocio { get; set; }
        [ForeignKey("idSocio")]
        public  Socio socio { get; set; }

        public int idMatricula { get; set; }
        [ForeignKey("idMatricula")]
        public Matricula matricula { get; set; }

        public DateTime fechaPago { get; set; }

        public decimal pago { get; set; }



    }
}
