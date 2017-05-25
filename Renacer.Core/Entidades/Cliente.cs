using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Renacer.Core.Entity
{
    [Table("Cliente")]
    public class Cliente
    {
        [Key]
        public int id { get; set; }
        public String nombre { get; set; }
    }
}
