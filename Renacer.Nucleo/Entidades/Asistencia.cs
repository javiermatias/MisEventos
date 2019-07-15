using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Nucleo.Entidades
{
    [Table("Asistencia")]
    public class Asistencia
    {
        [Key]
        public int id { get; set; }

        public int idSocio { get; set; }
        [ForeignKey("idSocio")]
        public Socio socio { get; set; }

        public int idEncargado { get; set; }
        [ForeignKey("idEncargado")]
        public Encargado responsable { get; set; }

        public int idDetalleEvento { get; set; }
        [ForeignKey("idDetalleEvento")]
        public DetalleEvento detalleEvento { get; set; }

        public bool estado { get; set; } //
        public DateTime fechaAsistencia { get; set; }

    }

   
}
