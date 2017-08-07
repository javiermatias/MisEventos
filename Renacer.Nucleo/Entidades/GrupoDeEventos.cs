using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Nucleo.Entidades
{
    [Table("GrupoDeEventos")]
    public class GrupoDeEventos
    {
        [Key]
        public int id { get; set; }
        public int cupoMaximo { get; set; }
        public int cupoMinimo { get; set; }
        public string nombre { get; set; }
        public string descripcion { get; set; }

        public List<Tag> listaTags { get; set; }
        public List<Evento> listaEventos { get; set; }

        public int idEspacio { get; set; }
        [ForeignKey("idEspacio")]
        public EspacioComun espacio { get; set; }

        public DateTime fechaCreacion { get; set; }
        public DateTime? fechaBaja { get; set; }
        public DateTime? fechaModificacion { get; set; }
    }

}
