namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class cambiosEncargado : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.EncargadoTags", "Encargado_id", "dbo.Encargado");
            DropForeignKey("dbo.EncargadoTags", "Tag_id", "dbo.Tags");
            DropIndex("dbo.EncargadoTags", new[] { "Encargado_id" });
            DropIndex("dbo.EncargadoTags", new[] { "Tag_id" });
            AddColumn("dbo.Encargado", "Tag_id", c => c.Int());
            CreateIndex("dbo.Encargado", "Tag_id");
            AddForeignKey("dbo.Encargado", "Tag_id", "dbo.Tags", "id");
            DropColumn("dbo.Encargado", "fechaModificacion");
            DropTable("dbo.EncargadoTags");
        }
        
        public override void Down()
        {
            CreateTable(
                "dbo.EncargadoTags",
                c => new
                    {
                        Encargado_id = c.Int(nullable: false),
                        Tag_id = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.Encargado_id, t.Tag_id });
            
            AddColumn("dbo.Encargado", "fechaModificacion", c => c.DateTime(precision: 0));
            DropForeignKey("dbo.Encargado", "Tag_id", "dbo.Tags");
            DropIndex("dbo.Encargado", new[] { "Tag_id" });
            DropColumn("dbo.Encargado", "Tag_id");
            CreateIndex("dbo.EncargadoTags", "Tag_id");
            CreateIndex("dbo.EncargadoTags", "Encargado_id");
            AddForeignKey("dbo.EncargadoTags", "Tag_id", "dbo.Tags", "id", cascadeDelete: true);
            AddForeignKey("dbo.EncargadoTags", "Encargado_id", "dbo.Encargado", "id", cascadeDelete: true);
        }
    }
}
