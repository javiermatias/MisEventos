namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class cambioAsistencia : DbMigration
    {
        public override void Up()
        {
            RenameTable(name: "dbo.TagSocios", newName: "SocioTags");
            DropForeignKey("dbo.SocioAsistencias", "Socio_id", "dbo.Socio");
            DropForeignKey("dbo.SocioAsistencias", "Asistencia_id", "dbo.Asistencia");
            DropIndex("dbo.SocioAsistencias", new[] { "Socio_id" });
            DropIndex("dbo.SocioAsistencias", new[] { "Asistencia_id" });
            DropPrimaryKey("dbo.SocioTags");
            AddColumn("dbo.Asistencia", "idSocio", c => c.Int(nullable: false));
            AddColumn("dbo.Asistencia", "idEncargado", c => c.Int(nullable: false));
            AddColumn("dbo.Asistencia", "idDetalleEvento", c => c.Int(nullable: false));
            AddColumn("dbo.Asistencia", "detalleEvento_id", c => c.Int());
            AlterColumn("dbo.Asistencia", "estado", c => c.Boolean(nullable: false));
            AlterColumn("dbo.DetalleEvento", "estado", c => c.String(unicode: false));
            AddPrimaryKey("dbo.SocioTags", new[] { "Socio_id", "Tag_id" });
            CreateIndex("dbo.Asistencia", "idSocio");
            CreateIndex("dbo.Asistencia", "idEncargado");
            CreateIndex("dbo.Asistencia", "detalleEvento_id");
            AddForeignKey("dbo.Asistencia", "idSocio", "dbo.Socio", "id", cascadeDelete: true);
            AddForeignKey("dbo.Asistencia", "detalleEvento_id", "dbo.DetalleEvento", "id");
            AddForeignKey("dbo.Asistencia", "idEncargado", "dbo.Encargado", "id", cascadeDelete: true);
            DropColumn("dbo.Asistencia", "fechaCreacion");
            DropColumn("dbo.Asistencia", "fechaModificacion");
            DropColumn("dbo.DetalleEvento", "fechaCancelacion");
            DropColumn("dbo.DetalleEvento", "fechaCreacion");
            DropColumn("dbo.DetalleEvento", "fechaModificacion");
            DropTable("dbo.SocioAsistencias");
        }
        
        public override void Down()
        {
            CreateTable(
                "dbo.SocioAsistencias",
                c => new
                    {
                        Socio_id = c.Int(nullable: false),
                        Asistencia_id = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.Socio_id, t.Asistencia_id });
            
            AddColumn("dbo.DetalleEvento", "fechaModificacion", c => c.DateTime(precision: 0));
            AddColumn("dbo.DetalleEvento", "fechaCreacion", c => c.DateTime(nullable: false, precision: 0));
            AddColumn("dbo.DetalleEvento", "fechaCancelacion", c => c.DateTime(nullable: false, precision: 0));
            AddColumn("dbo.Asistencia", "fechaModificacion", c => c.DateTime(precision: 0));
            AddColumn("dbo.Asistencia", "fechaCreacion", c => c.DateTime(nullable: false, precision: 0));
            DropForeignKey("dbo.Asistencia", "idEncargado", "dbo.Encargado");
            DropForeignKey("dbo.Asistencia", "detalleEvento_id", "dbo.DetalleEvento");
            DropForeignKey("dbo.Asistencia", "idSocio", "dbo.Socio");
            DropIndex("dbo.Asistencia", new[] { "detalleEvento_id" });
            DropIndex("dbo.Asistencia", new[] { "idEncargado" });
            DropIndex("dbo.Asistencia", new[] { "idSocio" });
            DropPrimaryKey("dbo.SocioTags");
            AlterColumn("dbo.DetalleEvento", "estado", c => c.Int(nullable: false));
            AlterColumn("dbo.Asistencia", "estado", c => c.Int(nullable: false));
            DropColumn("dbo.Asistencia", "detalleEvento_id");
            DropColumn("dbo.Asistencia", "idDetalleEvento");
            DropColumn("dbo.Asistencia", "idEncargado");
            DropColumn("dbo.Asistencia", "idSocio");
            AddPrimaryKey("dbo.SocioTags", new[] { "Tag_id", "Socio_id" });
            CreateIndex("dbo.SocioAsistencias", "Asistencia_id");
            CreateIndex("dbo.SocioAsistencias", "Socio_id");
            AddForeignKey("dbo.SocioAsistencias", "Asistencia_id", "dbo.Asistencia", "id", cascadeDelete: true);
            AddForeignKey("dbo.SocioAsistencias", "Socio_id", "dbo.Socio", "id", cascadeDelete: true);
            RenameTable(name: "dbo.SocioTags", newName: "TagSocios");
        }
    }
}
