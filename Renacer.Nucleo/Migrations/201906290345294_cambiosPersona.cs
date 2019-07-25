namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class cambiosPersona : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Asistencia", "Persona_id", "dbo.Persona");
            DropForeignKey("dbo.Asociacion", "Persona_id", "dbo.Persona");
            DropForeignKey("dbo.Inscripcion", "Persona_id", "dbo.Persona");
            DropForeignKey("dbo.PersonaTags", "Persona_id", "dbo.Persona");
            DropForeignKey("dbo.PersonaTags", "Tag_id", "dbo.Tags");
            DropIndex("dbo.Asistencia", new[] { "Persona_id" });
            DropIndex("dbo.Asociacion", new[] { "Persona_id" });
            DropIndex("dbo.Inscripcion", new[] { "Persona_id" });
            DropIndex("dbo.PersonaTags", new[] { "Persona_id" });
            DropIndex("dbo.PersonaTags", new[] { "Tag_id" });
            AddColumn("dbo.Persona", "Tag_id", c => c.Int());
            CreateIndex("dbo.Persona", "Tag_id");
            AddForeignKey("dbo.Persona", "Tag_id", "dbo.Tags", "id");
            DropColumn("dbo.Asistencia", "Persona_id");
            DropColumn("dbo.Asociacion", "Persona_id");
            DropColumn("dbo.Inscripcion", "Persona_id");
            DropColumn("dbo.Persona", "fechaModificacion");
            DropTable("dbo.PersonaTags");
        }
        
        public override void Down()
        {
            CreateTable(
                "dbo.PersonaTags",
                c => new
                    {
                        Persona_id = c.Int(nullable: false),
                        Tag_id = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.Persona_id, t.Tag_id });
            
            AddColumn("dbo.Persona", "fechaModificacion", c => c.DateTime(precision: 0));
            AddColumn("dbo.Inscripcion", "Persona_id", c => c.Int());
            AddColumn("dbo.Asociacion", "Persona_id", c => c.Int());
            AddColumn("dbo.Asistencia", "Persona_id", c => c.Int());
            DropForeignKey("dbo.Persona", "Tag_id", "dbo.Tags");
            DropIndex("dbo.Persona", new[] { "Tag_id" });
            DropColumn("dbo.Persona", "Tag_id");
            CreateIndex("dbo.PersonaTags", "Tag_id");
            CreateIndex("dbo.PersonaTags", "Persona_id");
            CreateIndex("dbo.Inscripcion", "Persona_id");
            CreateIndex("dbo.Asociacion", "Persona_id");
            CreateIndex("dbo.Asistencia", "Persona_id");
            AddForeignKey("dbo.PersonaTags", "Tag_id", "dbo.Tags", "id", cascadeDelete: true);
            AddForeignKey("dbo.PersonaTags", "Persona_id", "dbo.Persona", "id", cascadeDelete: true);
            AddForeignKey("dbo.Inscripcion", "Persona_id", "dbo.Persona", "id");
            AddForeignKey("dbo.Asociacion", "Persona_id", "dbo.Persona", "id");
            AddForeignKey("dbo.Asistencia", "Persona_id", "dbo.Persona", "id");
        }
    }
}
