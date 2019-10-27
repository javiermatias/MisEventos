using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Nucleo.Entidades
{
    [Table("RatingEvento")]
    public class RatingEvento
    {
        public int id { get; set; }
        public int ratingEvento { get; set; }
        public int ratingContenido { get; set; }
        public int ratingEncargado { get; set; }
        public string textoDescripcion { get; set; }
        public int idEvento { get; set; }
        [ForeignKey("idEvento")]
        public Evento evento { get; set; }
        public int idSocio { get; set; }
        [ForeignKey("idSocio")]
        public Socio socio { get; set; }

  



    }
}
