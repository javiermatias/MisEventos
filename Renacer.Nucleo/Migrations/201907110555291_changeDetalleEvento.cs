namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class changeDetalleEvento : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.DetalleEvento", "dia", c => c.String(unicode: false));
            AddColumn("dbo.DetalleEvento", "asistencia", c => c.Boolean(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.DetalleEvento", "asistencia");
            DropColumn("dbo.DetalleEvento", "dia");
        }
    }
}
