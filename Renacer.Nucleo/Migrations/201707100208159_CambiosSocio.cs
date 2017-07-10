namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class CambiosSocio : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Socio", "nroDocumento", c => c.String(unicode: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Socio", "nroDocumento");
        }
    }
}
