namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class agregoEstadoEncargado : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Encargado", "estado", c => c.String(unicode: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Encargado", "estado");
        }
    }
}
