using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Nucleo.Entidades
{
    [Table("DetalleEvento")]
    public class DetalleEvento
    {
        [Key]
        public int id { get; set; }
        public string nombre { get; set; }
        public string descripcion { get; set; }

        public int idEncargado { get; set; }
        [ForeignKey("idEncargado")]
        public Encargado responsable { get; set; }

        public int idEvento { get; set; }
        [ForeignKey("idEvento")]
        public Evento evento { get; set; }

        public int idEspacio { get; set; }
        [ForeignKey("idEspacio")]
        public EspacioComun espacio { get; set; }   
        
        public DateTime fechaDesde { get; set; }
        public DateTime fechaHasta { get; set; }
        public DateTime? fechaBaja { get; set; }
        public string estado { get; set; }
        public string dia { get; set; }
        public bool asistencia { get; set; } = false; //true se tomo asistencia


    }

    [Table("TipoEvento")]
    public class TipoEvento
    {
        [Key]
        public int id { get; set; }
        public string nombre { get; set; }
        public string descripcion { get; set; }
        
    }

}
