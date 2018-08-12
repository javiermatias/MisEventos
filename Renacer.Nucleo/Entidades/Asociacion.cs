using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Nucleo.Entidades
{

    
    [Table("Asociacion")]
    public class Asociacion
    {
        [Key]
        public int id { get; set; }

        public int idSocio { get; set; }
        [ForeignKey("idSocio")]
        public Socio Socio { get; set; }
        public List<Pago> listaPagos { get; set; }

        public EstadoAsociacion estado { get; set; }
        public DateTime fechaInicio { get; set; }
        public DateTime fechaFin { get; set; }

        public DateTime fechaCreacion { get; set; }
        public DateTime? fechaModificacion { get; set; }
    }

    public enum EstadoAsociacion {PendientePago,Vigente,Caducada,Cancelada}
}
