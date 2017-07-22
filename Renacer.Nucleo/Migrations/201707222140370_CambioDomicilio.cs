namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class CambioDomicilio : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Domicilio", "nro", c => c.String(unicode: false));
            AddColumn("dbo.Domicilio", "codPostal", c => c.Int(nullable: false));
            DropColumn("dbo.Domicilio", "nroPiso");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Domicilio", "nroPiso", c => c.String(unicode: false));
            DropColumn("dbo.Domicilio", "codPostal");
            DropColumn("dbo.Domicilio", "nro");
        }
    }
}
