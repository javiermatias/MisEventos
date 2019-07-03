namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class cambioEventoCuotas : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Cuotas", "Evento_id", "dbo.Evento");
            DropIndex("dbo.Cuotas", new[] { "Evento_id" });
            DropTable("dbo.Cuotas");
        }
        
        public override void Down()
        {
            CreateTable(
                "dbo.Cuotas",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                        monto = c.Decimal(nullable: false, precision: 18, scale: 2),
                        Evento_id = c.Int(),
                    })
                .PrimaryKey(t => t.id);
            
            CreateIndex("dbo.Cuotas", "Evento_id");
            AddForeignKey("dbo.Cuotas", "Evento_id", "dbo.Evento", "id");
        }
    }
}
