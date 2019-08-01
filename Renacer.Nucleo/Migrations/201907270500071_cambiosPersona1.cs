namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class cambiosPersona1 : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Usuario", "idPersona", "dbo.Persona");
            DropForeignKey("dbo.UsuarioRols", "Usuario_id", "dbo.Usuario");
            DropForeignKey("dbo.UsuarioRols", "Rol_id", "dbo.Rol");
            DropIndex("dbo.Usuario", new[] { "idPersona" });
            DropIndex("dbo.UsuarioRols", new[] { "Usuario_id" });
            DropIndex("dbo.UsuarioRols", new[] { "Rol_id" });
            AddColumn("dbo.Usuario", "Rol_id", c => c.Int());
            CreateIndex("dbo.Usuario", "Rol_id");
            AddForeignKey("dbo.Usuario", "Rol_id", "dbo.Rol", "id");
            DropColumn("dbo.Usuario", "fechaUltimoAcceso");
            DropColumn("dbo.Usuario", "fechaModificacion");
            DropColumn("dbo.Usuario", "idPersona");
            DropColumn("dbo.Usuario", "contador");
            DropTable("dbo.UsuarioRols");
        }
        
        public override void Down()
        {
            CreateTable(
                "dbo.UsuarioRols",
                c => new
                    {
                        Usuario_id = c.Int(nullable: false),
                        Rol_id = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.Usuario_id, t.Rol_id });
            
            AddColumn("dbo.Usuario", "contador", c => c.Int(nullable: false));
            AddColumn("dbo.Usuario", "idPersona", c => c.Int());
            AddColumn("dbo.Usuario", "fechaModificacion", c => c.DateTime(nullable: false, precision: 0));
            AddColumn("dbo.Usuario", "fechaUltimoAcceso", c => c.DateTime(nullable: false, precision: 0));
            DropForeignKey("dbo.Usuario", "Rol_id", "dbo.Rol");
            DropIndex("dbo.Usuario", new[] { "Rol_id" });
            DropColumn("dbo.Usuario", "Rol_id");
            CreateIndex("dbo.UsuarioRols", "Rol_id");
            CreateIndex("dbo.UsuarioRols", "Usuario_id");
            CreateIndex("dbo.Usuario", "idPersona");
            AddForeignKey("dbo.UsuarioRols", "Rol_id", "dbo.Rol", "id", cascadeDelete: true);
            AddForeignKey("dbo.UsuarioRols", "Usuario_id", "dbo.Usuario", "id", cascadeDelete: true);
            AddForeignKey("dbo.Usuario", "idPersona", "dbo.Persona", "id");
        }
    }
}
