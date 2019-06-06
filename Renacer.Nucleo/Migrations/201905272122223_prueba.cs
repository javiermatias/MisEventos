namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class prueba : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Matricula", "estado2", c => c.String(unicode: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Matricula", "estado2");
        }
    }
}
