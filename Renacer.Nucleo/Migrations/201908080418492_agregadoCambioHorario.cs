namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class agregadoCambioHorario : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Horarios", "espacio", c => c.Int(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Horarios", "espacio");
        }
    }
}
