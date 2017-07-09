namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Creacion_Usuario_Socio_Contacto_Domicilio : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Contacto",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                        apellido = c.String(unicode: false),
                        telefono = c.String(unicode: false),
                        celular = c.String(unicode: false),
                        email = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.Domicilio",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        barrio = c.String(unicode: false),
                        calle = c.String(unicode: false),
                        piso = c.String(unicode: false),
                        nroPiso = c.String(unicode: false),
                        depto = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.Usuario",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                        usuario = c.String(unicode: false),
                        clave = c.String(unicode: false),
                        imagen = c.String(unicode: false),
                        email = c.String(unicode: false),
                        fechaCreacion = c.DateTime(nullable: false, precision: 0),
                        fechaBaja = c.DateTime(nullable: false, precision: 0),
                        fechaUltimoAcceso = c.DateTime(nullable: false, precision: 0),
                        fechaModificacion = c.DateTime(nullable: false, precision: 0),
                        idFacebook = c.String(unicode: false),
                        idGoogle = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.id);
            
            AddColumn("dbo.Socio", "apellido", c => c.String(unicode: false));
            AddColumn("dbo.Socio", "telefono", c => c.String(unicode: false));
            AddColumn("dbo.Socio", "celular", c => c.String(unicode: false));
            AddColumn("dbo.Socio", "email", c => c.String(unicode: false));
            AddColumn("dbo.Socio", "idTipoDoc", c => c.Int(nullable: false));
            AddColumn("dbo.Socio", "idDomicilio", c => c.Int(nullable: false));
            AddColumn("dbo.Socio", "idContacto", c => c.Int(nullable: false));
            CreateIndex("dbo.Socio", "idTipoDoc");
            CreateIndex("dbo.Socio", "idDomicilio");
            CreateIndex("dbo.Socio", "idContacto");
            AddForeignKey("dbo.Socio", "idContacto", "dbo.Contacto", "id", cascadeDelete: true);
            AddForeignKey("dbo.Socio", "idDomicilio", "dbo.Domicilio", "id", cascadeDelete: true);
            AddForeignKey("dbo.Socio", "idTipoDoc", "dbo.TipoDocumento", "id", cascadeDelete: true);
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Socio", "idTipoDoc", "dbo.TipoDocumento");
            DropForeignKey("dbo.Socio", "idDomicilio", "dbo.Domicilio");
            DropForeignKey("dbo.Socio", "idContacto", "dbo.Contacto");
            DropIndex("dbo.Socio", new[] { "idContacto" });
            DropIndex("dbo.Socio", new[] { "idDomicilio" });
            DropIndex("dbo.Socio", new[] { "idTipoDoc" });
            DropColumn("dbo.Socio", "idContacto");
            DropColumn("dbo.Socio", "idDomicilio");
            DropColumn("dbo.Socio", "idTipoDoc");
            DropColumn("dbo.Socio", "email");
            DropColumn("dbo.Socio", "celular");
            DropColumn("dbo.Socio", "telefono");
            DropColumn("dbo.Socio", "apellido");
            DropTable("dbo.Usuario");
            DropTable("dbo.Domicilio");
            DropTable("dbo.Contacto");
        }
    }
}
