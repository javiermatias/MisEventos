namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class quitadoRolyPersona : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Persona", "idContacto", "dbo.Contacto");
            DropForeignKey("dbo.Persona", "idDomicilio", "dbo.Domicilio");
            DropForeignKey("dbo.Persona", "idTipoDoc", "dbo.TipoDocumento");
            DropForeignKey("dbo.Usuario", "Rol_id", "dbo.Rol");
            DropIndex("dbo.Persona", new[] { "idTipoDoc" });
            DropIndex("dbo.Persona", new[] { "idDomicilio" });
            DropIndex("dbo.Persona", new[] { "idContacto" });
            DropIndex("dbo.Usuario", new[] { "Rol_id" });
            DropColumn("dbo.Usuario", "Rol_id");
            DropTable("dbo.Persona");
            DropTable("dbo.Rol");
        }
        
        public override void Down()
        {
            CreateTable(
                "dbo.Rol",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                        descripcion = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.Persona",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                        apellido = c.String(unicode: false),
                        telefono = c.String(unicode: false),
                        celular = c.String(unicode: false),
                        email = c.String(unicode: false),
                        sexo = c.String(unicode: false),
                        estadoCivil = c.String(unicode: false),
                        idTipoDoc = c.Int(),
                        nroDocumento = c.String(unicode: false),
                        idDomicilio = c.Int(),
                        idContacto = c.Int(),
                        fechaCreacion = c.DateTime(nullable: false, precision: 0),
                        fechaNacimiento = c.DateTime(precision: 0),
                        fechaBaja = c.DateTime(precision: 0),
                        rol = c.String(unicode: false),
                        baja = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.id);
            
            AddColumn("dbo.Usuario", "Rol_id", c => c.Int());
            CreateIndex("dbo.Usuario", "Rol_id");
            CreateIndex("dbo.Persona", "idContacto");
            CreateIndex("dbo.Persona", "idDomicilio");
            CreateIndex("dbo.Persona", "idTipoDoc");
            AddForeignKey("dbo.Usuario", "Rol_id", "dbo.Rol", "id");
            AddForeignKey("dbo.Persona", "idTipoDoc", "dbo.TipoDocumento", "id");
            AddForeignKey("dbo.Persona", "idDomicilio", "dbo.Domicilio", "id");
            AddForeignKey("dbo.Persona", "idContacto", "dbo.Contacto", "id");
        }
    }
}
