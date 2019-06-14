namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class agregadocantidadcuota : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Evento", "cantidadCuota", c => c.Int(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Evento", "cantidadCuota");
        }
    }
}
