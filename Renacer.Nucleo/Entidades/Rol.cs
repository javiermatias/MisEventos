using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Nucleo.Entidades
{
    [Table("Rol")]
    public partial class Rol
    {
        public Rol()
        {
          this.usuarios = new HashSet<Usuario>();
          this.permisos = new HashSet<Permiso>();
        }



        [Key]
        public int id { get; set; }

        public string nombre { get; set; }

        public string descripcion { get; set; }


        public virtual ICollection<Usuario> usuarios { get; set; }

        public virtual ICollection<Permiso> permisos { get; set; }
    }
}
