namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class changecuota : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.CuotaEventoes", "Cuota_id", "dbo.Cuotas");
            DropForeignKey("dbo.CuotaEventoes", "Evento_id", "dbo.Evento");
            DropIndex("dbo.CuotaEventoes", new[] { "Cuota_id" });
            DropIndex("dbo.CuotaEventoes", new[] { "Evento_id" });
            AddColumn("dbo.Cuotas", "Evento_id", c => c.Int());
            CreateIndex("dbo.Cuotas", "Evento_id");
            AddForeignKey("dbo.Cuotas", "Evento_id", "dbo.Evento", "id");
            DropTable("dbo.CuotaEventoes");
        }
        
        public override void Down()
        {
            CreateTable(
                "dbo.CuotaEventoes",
                c => new
                    {
                        Cuota_id = c.Int(nullable: false),
                        Evento_id = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.Cuota_id, t.Evento_id });
            
            DropForeignKey("dbo.Cuotas", "Evento_id", "dbo.Evento");
            DropIndex("dbo.Cuotas", new[] { "Evento_id" });
            DropColumn("dbo.Cuotas", "Evento_id");
            CreateIndex("dbo.CuotaEventoes", "Evento_id");
            CreateIndex("dbo.CuotaEventoes", "Cuota_id");
            AddForeignKey("dbo.CuotaEventoes", "Evento_id", "dbo.Evento", "id", cascadeDelete: true);
            AddForeignKey("dbo.CuotaEventoes", "Cuota_id", "dbo.Cuotas", "id", cascadeDelete: true);
        }
    }
}
