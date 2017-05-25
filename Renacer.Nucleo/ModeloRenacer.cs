namespace Renacer.Nucleo
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;
    using Entidades;

    public partial class ModeloRenacer : DbContext
    {
        public ModeloRenacer()
            : base("name=ModeloRenacer")
        {
        }

        public virtual DbSet<Cliente> cliente { get; set; }
        public virtual DbSet<Socio> socio { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Cliente>()
                .Property(e => e.nombre)
                .IsUnicode(false);
        }
    }
}
