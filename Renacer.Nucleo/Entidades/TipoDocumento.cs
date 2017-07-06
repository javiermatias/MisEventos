namespace Renacer.Nucleo
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TipoDocumento")]
    public partial class TipoDocumento
    {
        [Key]
        public int id { get; set; }
        public string nombre { get; set; }

    }
}
    