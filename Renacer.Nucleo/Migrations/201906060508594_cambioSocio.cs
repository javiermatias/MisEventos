namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class cambioSocio : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.MatriculaXSocios", "pago", c => c.Decimal(nullable: false, precision: 18, scale: 2));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.MatriculaXSocios", "pago", c => c.Boolean(nullable: false));
        }
    }
}
