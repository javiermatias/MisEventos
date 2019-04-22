using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Nucleo.Entidades
{
    [Table("TipoEspacio")]
    public partial class TipoEspacio
    {
        [Key]
        public int id { get; set; }
        public string nombre { get; set; }

    }
}
