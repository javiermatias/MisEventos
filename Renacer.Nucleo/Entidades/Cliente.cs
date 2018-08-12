namespace Renacer.Nucleo.Entidades
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Cliente")]
    public partial class Cliente
    {
        [Key]
        public int id { get; set; }
        public string nombre { get; set; }
        public string apellido { get; set; }
        public int tipoDoc_id { get; set; }

        [ForeignKey("tipoDoc_id")]
        public TipoDocumento tipoDoc { get; set; } 
    }

}
