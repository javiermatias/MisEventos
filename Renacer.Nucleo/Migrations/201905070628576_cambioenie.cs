namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class cambioenie : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Matriculas", "anio", c => c.DateTime(nullable: false, precision: 0));
            DropColumn("dbo.Matriculas", "año");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Matriculas", "año", c => c.DateTime(nullable: false, precision: 0));
            DropColumn("dbo.Matriculas", "anio");
        }
    }
}
