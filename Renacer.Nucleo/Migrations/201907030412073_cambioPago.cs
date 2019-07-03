namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class cambioPago : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Pago", "nombre", c => c.String(unicode: false));
            AddColumn("dbo.Pago", "fechaBaja", c => c.DateTime(nullable: false, precision: 0));
            AddColumn("dbo.Pago", "estaPagado", c => c.Boolean(nullable: false));
            DropColumn("dbo.Pago", "fechaCreacion");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Pago", "fechaCreacion", c => c.DateTime(nullable: false, precision: 0));
            DropColumn("dbo.Pago", "estaPagado");
            DropColumn("dbo.Pago", "fechaBaja");
            DropColumn("dbo.Pago", "nombre");
        }
    }
}
