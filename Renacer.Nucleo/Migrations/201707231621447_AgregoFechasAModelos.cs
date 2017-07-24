namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AgregoFechasAModelos : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Encargado", "fechaCreacion", c => c.DateTime(nullable: false, precision: 0));
            AddColumn("dbo.Encargado", "fechaBaja", c => c.DateTime(nullable: false, precision: 0));
            AddColumn("dbo.Encargado", "fechaModificacion", c => c.DateTime(nullable: false, precision: 0));
            AddColumn("dbo.Socio", "fechaCreacion", c => c.DateTime(nullable: false, precision: 0));
            AddColumn("dbo.Socio", "fechaBaja", c => c.DateTime(nullable: false, precision: 0));
            AddColumn("dbo.Socio", "fechaModificacion", c => c.DateTime(nullable: false, precision: 0));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Socio", "fechaModificacion");
            DropColumn("dbo.Socio", "fechaBaja");
            DropColumn("dbo.Socio", "fechaCreacion");
            DropColumn("dbo.Encargado", "fechaModificacion");
            DropColumn("dbo.Encargado", "fechaBaja");
            DropColumn("dbo.Encargado", "fechaCreacion");
        }
    }
}
