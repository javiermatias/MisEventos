namespace Renacer.Nucleo
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;
    using Entidades;
    using System.Configuration;

    public partial class ModeloRenacer : DbContext
    {
        public ModeloRenacer() :
                base("ModeloRenacer")
        {
            this.Configuration.ProxyCreationEnabled = false;
        }

        public virtual DbSet<Cliente> cliente { get; set; }
        public virtual DbSet<Socio> socio { get; set; }
        public virtual DbSet<EspacioComun> espacioComun { get; set; }
        public virtual DbSet<Usuario> usuario { get; set; }
        public virtual DbSet<TipoDocumento> tipoDocumento { get; set; }
        public virtual DbSet<Encargado> encargado { get; set; }

        public virtual DbSet<Asistencia> asistencia { get; set; }
        public virtual DbSet<Asociacion> asociacion { get; set; }

        public virtual DbSet<Domicilio> domicilio { get; set; }
        public virtual DbSet<Tag> tag { get; set; }
        public virtual DbSet<Evento> evento { get; set; }
        public virtual DbSet<Pago> pago { get; set; }
        public virtual DbSet<Inscripcion> inscripcion { get; set; }
        public virtual DbSet<TipoEvento> tipoEvento { get; set; }
        public virtual DbSet<DetalleEvento> detalleEvento { get; set; }


        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Cliente>()
                .Property(e => e.nombre)
                .IsUnicode(false);
        }
    }
}
