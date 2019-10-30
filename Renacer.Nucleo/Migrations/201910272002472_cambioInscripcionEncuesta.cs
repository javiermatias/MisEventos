namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class cambioInscripcionEncuesta : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Inscripcion", "estadoEncuesta", c => c.Boolean(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Inscripcion", "estadoEncuesta");
        }
    }
}
