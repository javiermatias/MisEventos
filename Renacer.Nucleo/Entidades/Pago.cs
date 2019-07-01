using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Nucleo.Entidades
{
    [Table("Pago")]
    public class Pago
    {
        [Key]
        public int id { get; set; }
        public float monto { get; set; }
        public int nroRecibo { get; set; }
        public int idInscripcion { get; set; }
        [ForeignKey("idInscripcion")]
        public Inscripcion Inscripcion { get; set; }

        //public int idAsociacion { get; set; }
        //[ForeignKey("idAsociacion")]
        //public Asociacion Asociacion { get; set; }



        public DateTime fechaCobro { get; set; }
        public DateTime fechaCreacion { get; set; }
        //public DateTime? fechaBaja { get; set; }
        //public DateTime? fechaModificacion { get; set; }


    }
}
