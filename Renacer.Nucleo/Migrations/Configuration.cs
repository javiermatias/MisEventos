namespace Renacer.Nucleo.Migrations
{
    using Entidades;
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<Renacer.Nucleo.ModeloRenacer>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
            SetSqlGenerator("MySql.Data.MySqlClient", new MySql.Data.Entity.MySqlMigrationSqlGenerator());
        }

        protected override void Seed(ModeloRenacer context)
        {
            context.usuario.RemoveRange(context.usuario.ToList());
            context.usuario.AddOrUpdate(new Usuario() {nombre = "Administrador", usuario = "admin", clave = "123456", email = "admin@admin.com"});
            context.usuario.AddOrUpdate(new Usuario() {nombre = "Socio", usuario = "socio", clave = "123456", email = "socio@socio.com"});
            context.tipoDocumento.AddOrUpdate(new TipoDocumento() {nombre = "Pasaporte"});

            context.tipoEvento.AddOrUpdate(new TipoEvento() {nombre = "Curso",descripcion="---"});
            context.tipoEvento.AddOrUpdate(new TipoEvento() {nombre = "Taller",descripcion="---"});
            context.tipoEvento.AddOrUpdate(new TipoEvento() {nombre = "Conferencia",descripcion="---"});
            context.tipoEvento.AddOrUpdate(new TipoEvento() {nombre = "Campaña social", descripcion="---"});
            context.tipoEvento.AddOrUpdate(new TipoEvento() {nombre = "Festival", descripcion="---"});
            context.tipoDocumento.AddOrUpdate(new TipoDocumento() {nombre = "Pasaporte"});
            Domicilio D = new Domicilio();
            TipoDocumento td = new TipoDocumento() { nombre = "DNI" };
            context.encargado.AddOrUpdate(new Encargado() {nombre = "Augusto",apellido = "Galan",domicilio=D,nroDocumento="2342",tipoDoc=td});
        }
    }
}
