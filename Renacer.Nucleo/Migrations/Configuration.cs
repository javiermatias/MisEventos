namespace Renacer.Nucleo.Migrations
{
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
        }
    }
}
