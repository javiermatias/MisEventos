namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class CreacionTipoDocumento : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.TipoDocumento",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.id);
            
            AddColumn("dbo.Cliente", "tipoDoc_id", c => c.Int(nullable: false));
            CreateIndex("dbo.Cliente", "tipoDoc_id");
            AddForeignKey("dbo.Cliente", "tipoDoc_id", "dbo.TipoDocumento", "id", cascadeDelete: true);
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Cliente", "tipoDoc_id", "dbo.TipoDocumento");
            DropIndex("dbo.Cliente", new[] { "tipoDoc_id" });
            DropColumn("dbo.Cliente", "tipoDoc_id");
            DropTable("dbo.TipoDocumento");
        }
    }
}
