namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class cambios : DbMigration
    {
        public override void Up()
        {
            DropColumn("dbo.Inscripcion", "fechaBaja");
            DropColumn("dbo.Inscripcion", "fechaModificacion");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Inscripcion", "fechaModificacion", c => c.DateTime(precision: 0));
            AddColumn("dbo.Inscripcion", "fechaBaja", c => c.DateTime(precision: 0));
        }
    }
}
