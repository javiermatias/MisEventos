namespace Renacer.Nucleo
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("EspacioComun")]
    public partial class EspacioComun
    {
        [Key]
        public int id { get; set; }
        public string nombre { get; set; }
        public string descripcion { get; set; }
        public Int32 capacidad { get; set; }
        public DateTime fechaCreacion { get; set; }
        public DateTime fechaBaja { get; set; }
        public DateTime fechaModificacion { get; set; }
        public int idDireccion { get; set; }
        public int idTipoEspacio { get; set; }
        public int estado { get; set; }
        
    }

}
