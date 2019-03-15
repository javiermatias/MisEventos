using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Nucleo.Entidades
{
    [Table("Permiso")]
    public partial class Permiso
    {
        public Permiso()
        {
            this.Roles = new HashSet<Rol>();
            
        }
        [Key]
        public int id { get; set; }

        public string nombre { get; set; }

        public string descripcion { get; set; }

        public virtual ICollection<Rol> Roles { get; set; }

    }
}
