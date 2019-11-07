namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class metodopago : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Pago", "metodoPago", c => c.String(unicode: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Pago", "metodoPago");
        }
    }
}
