using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Nucleo.Entidades
{
    [Table("Encargado")]
    public class Encargado
    {
        [Key]
        public int id { get; set; }
        public string nombre { get; set; }
        public string apellido { get; set; }
        public string telefono { get; set; }
        public string celular { get; set; }
        public string email { get; set; }

        public int idTipoDoc { get; set; }
        [ForeignKey("idTipoDoc")]
        public TipoDocumento tipoDoc { get; set; }
        public string nroDocumento { get; set; }

        public int idDomicilio { get; set; }
        [ForeignKey("idDomicilio")]
        public Domicilio domicilio { get; set; }
        public List<Tag> listaTags { get; set; }

    }
}
