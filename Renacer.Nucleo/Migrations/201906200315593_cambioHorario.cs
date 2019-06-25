namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class cambioHorario : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Horarios", "dayOfWeek", c => c.Int(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Horarios", "dayOfWeek");
        }
    }
}
