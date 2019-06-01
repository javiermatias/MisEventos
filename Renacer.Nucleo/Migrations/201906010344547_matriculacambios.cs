namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class matriculacambios : DbMigration
    {
        public override void Up()
        {
            DropColumn("dbo.Matricula", "estado2");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Matricula", "estado2", c => c.String(unicode: false));
        }
    }
}
