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
        //public Tag()
        //{
        //    this.listaPersona = new HashSet<Persona>();

        //}
        [Key]
        public int id { get; set; }
        public string nombre { get; set; }
        
        //public string descripcion { get; set; }

        public List<Encargado> listaEncargados { get; set; }
        //public List<Evento> listaEventos { get; set; }

        public List<EspacioComun> listaEspacios { get; set; }
        public List<Socio> listaSocios { get; set; }

       // public virtual ICollection<Persona> listaPersona { get; set; }
    }
}
    