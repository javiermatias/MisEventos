using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Nucleo.Entidades
{
    [Table("Inscripcion")]
    public class Inscripcion
    {
        [Key]
        public int id { get; set; }

        public int idGrupoDeEventos { get; set; }
        [ForeignKey("idGrupoDeEventos")]
        public GrupoDeEventos GrupoDeEventos { get; set; }

        public int idPago { get; set; }
        [ForeignKey("idPago")]
        public Pago Pago { get; set; }

        public DateTime fechaCreacion { get; set; }
        public DateTime? fechaBaja { get; set; }
        public DateTime? fechaModificacion { get; set; }


    }
}
