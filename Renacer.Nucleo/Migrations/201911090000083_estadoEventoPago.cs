namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class estadoEventoPago : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Evento", "estadoDeudores", c => c.String(unicode: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Evento", "estadoDeudores");
        }
    }
}
