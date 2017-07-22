namespace Renacer.Nucleo
{
    using Entidades;
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Tags")]
    public partial class Tag
    {
        [Key]
        public int id { get; set; }
        public string nombre { get; set; }
        public string descripcion { get; set; }

        public List<Encargado> listaEncargados { get; set; }
       // public List<Evento> listaEventos { get; set; }

    }
}
    