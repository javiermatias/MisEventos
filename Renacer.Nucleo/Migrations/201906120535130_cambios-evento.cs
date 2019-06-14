namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class cambiosevento : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.TagEventoes", "Tag_id", "dbo.Tags");
            DropForeignKey("dbo.TagEventoes", "Evento_id", "dbo.Evento");
            DropForeignKey("dbo.Socio", "Evento_id", "dbo.Evento");
            DropIndex("dbo.Socio", new[] { "Evento_id" });
            DropIndex("dbo.TagEventoes", new[] { "Tag_id" });
            DropIndex("dbo.TagEventoes", new[] { "Evento_id" });
            CreateTable(
                "dbo.Cuotas",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                        monto = c.Decimal(nullable: false, precision: 18, scale: 2),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.CuotaEventoes",
                c => new
                    {
                        Cuota_id = c.Int(nullable: false),
                        Evento_id = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.Cuota_id, t.Evento_id })
                .ForeignKey("dbo.Cuotas", t => t.Cuota_id, cascadeDelete: true)
                .ForeignKey("dbo.Evento", t => t.Evento_id, cascadeDelete: true)
                .Index(t => t.Cuota_id)
                .Index(t => t.Evento_id);
            
            DropColumn("dbo.Socio", "Evento_id");
            DropTable("dbo.TagEventoes");
        }
        
        public override void Down()
        {
            CreateTable(
                "dbo.TagEventoes",
                c => new
                    {
                        Tag_id = c.Int(nullable: false),
                        Evento_id = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.Tag_id, t.Evento_id });
            
            AddColumn("dbo.Socio", "Evento_id", c => c.Int());
            DropForeignKey("dbo.CuotaEventoes", "Evento_id", "dbo.Evento");
            DropForeignKey("dbo.CuotaEventoes", "Cuota_id", "dbo.Cuotas");
            DropIndex("dbo.CuotaEventoes", new[] { "Evento_id" });
            DropIndex("dbo.CuotaEventoes", new[] { "Cuota_id" });
            DropTable("dbo.CuotaEventoes");
            DropTable("dbo.Cuotas");
            CreateIndex("dbo.TagEventoes", "Evento_id");
            CreateIndex("dbo.TagEventoes", "Tag_id");
            CreateIndex("dbo.Socio", "Evento_id");
            AddForeignKey("dbo.Socio", "Evento_id", "dbo.Evento", "id");
            AddForeignKey("dbo.TagEventoes", "Evento_id", "dbo.Evento", "id", cascadeDelete: true);
            AddForeignKey("dbo.TagEventoes", "Tag_id", "dbo.Tags", "id", cascadeDelete: true);
        }
    }
}
