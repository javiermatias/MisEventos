namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class agregadoCambioHorario1 : DbMigration
    {
        public override void Up()
        {
            DropColumn("dbo.Horarios", "espacio");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Horarios", "espacio", c => c.Int(nullable: false));
        }
    }
}
