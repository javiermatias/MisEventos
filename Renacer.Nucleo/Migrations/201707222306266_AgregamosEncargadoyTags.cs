namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AgregamosEncargadoyTags : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Encargado",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                        apellido = c.String(unicode: false),
                        telefono = c.String(unicode: false),
                        celular = c.String(unicode: false),
                        email = c.String(unicode: false),
                        idTipoDoc = c.Int(nullable: false),
                        nroDocumento = c.String(unicode: false),
                        idDomicilio = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.Domicilio", t => t.idDomicilio, cascadeDelete: true)
                .ForeignKey("dbo.TipoDocumento", t => t.idTipoDoc, cascadeDelete: true)
                .Index(t => t.idTipoDoc)
                .Index(t => t.idDomicilio);
            
            CreateTable(
                "dbo.Tags",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                        descripcion = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.TagEncargadoes",
                c => new
                    {
                        Tag_id = c.Int(nullable: false),
                        Encargado_id = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.Tag_id, t.Encargado_id })
                .ForeignKey("dbo.Tags", t => t.Tag_id, cascadeDelete: true)
                .ForeignKey("dbo.Encargado", t => t.Encargado_id, cascadeDelete: true)
                .Index(t => t.Tag_id)
                .Index(t => t.Encargado_id);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Encargado", "idTipoDoc", "dbo.TipoDocumento");
            DropForeignKey("dbo.TagEncargadoes", "Encargado_id", "dbo.Encargado");
            DropForeignKey("dbo.TagEncargadoes", "Tag_id", "dbo.Tags");
            DropForeignKey("dbo.Encargado", "idDomicilio", "dbo.Domicilio");
            DropIndex("dbo.TagEncargadoes", new[] { "Encargado_id" });
            DropIndex("dbo.TagEncargadoes", new[] { "Tag_id" });
            DropIndex("dbo.Encargado", new[] { "idDomicilio" });
            DropIndex("dbo.Encargado", new[] { "idTipoDoc" });
            DropTable("dbo.TagEncargadoes");
            DropTable("dbo.Tags");
            DropTable("dbo.Encargado");
        }
    }
}
