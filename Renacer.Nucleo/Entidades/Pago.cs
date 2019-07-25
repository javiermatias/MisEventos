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

        public string nombre { get; set; }
        public float monto { get; set; }
        public int nroRecibo { get; set; }
        public int idInscripcion { get; set; }
        [ForeignKey("idInscripcion")]
        public Inscripcion Inscripcion { get; set; }
        public DateTime fechaCobro { get; set; }
        public DateTime fechaBaja { get; set; }
        public bool estaPagado { get; set; } = false; //si es true esta pagado.
       // public bool baja { get; set; } = false; // si es true este pago se dio de baja.

        //Podria agregarse eventualmente que secretaria hizo el cobro. Por el momento lo dejamos asi.

    }
}
