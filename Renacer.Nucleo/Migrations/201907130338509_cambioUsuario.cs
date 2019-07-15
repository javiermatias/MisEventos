namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class cambioUsuario : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Usuario", "idEncargado", c => c.Int());
            AddColumn("dbo.Usuario", "idSocio", c => c.Int());
        }
        
        public override void Down()
        {
            DropColumn("dbo.Usuario", "idSocio");
            DropColumn("dbo.Usuario", "idEncargado");
        }
    }
}
