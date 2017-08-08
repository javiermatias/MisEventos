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
        public ICollection<Socio> listaSocios { get; set; }
        public EstadoAsistencia estado { get; set; }
        public DateTime fechaAsistencia { get; set; }
        public DateTime fechaCreacion { get; set; }
        public DateTime? fechaModificacion { get; set; }
    }

    public enum EstadoAsistencia {Pendiente,Finalizada,Cancelada}
}
