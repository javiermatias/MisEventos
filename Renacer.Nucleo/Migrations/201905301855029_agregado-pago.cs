namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class agregadopago : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.MatriculaXSocios", "pago", c => c.Boolean(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.MatriculaXSocios", "pago");
        }
    }
}
