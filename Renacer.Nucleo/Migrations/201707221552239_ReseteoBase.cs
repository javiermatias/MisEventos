namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class ReseteoBase : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Cliente",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                        apellido = c.String(unicode: false),
                        tipoDoc_id = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.TipoDocumento", t => t.tipoDoc_id, cascadeDelete: true)
                .Index(t => t.tipoDoc_id);
            
            CreateTable(
                "dbo.TipoDocumento",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.EspacioComun",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                        descripcion = c.String(unicode: false),
                        capacidad = c.Int(nullable: false),
                        fechaCreacion = c.DateTime(nullable: false, precision: 0),
                        fechaBaja = c.DateTime(nullable: false, precision: 0),
                        fechaModificacion = c.DateTime(nullable: false, precision: 0),
                        idTipoEspacio = c.Int(nullable: false),
                        estado = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.Socio",
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
                        idContacto = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.Contacto", t => t.idContacto, cascadeDelete: true)
                .ForeignKey("dbo.Domicilio", t => t.idDomicilio, cascadeDelete: true)
                .ForeignKey("dbo.TipoDocumento", t => t.idTipoDoc, cascadeDelete: true)
                .Index(t => t.idTipoDoc)
                .Index(t => t.idDomicilio)
                .Index(t => t.idContacto);
            
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
                        rol = c.String(unicode: false),
                        email = c.String(unicode: false),
                        fechaCreacion = c.DateTime(nullable: false, precision: 0),
                        fechaBaja = c.DateTime(nullable: false, precision: 0),
                        fechaUltimoAcceso = c.DateTime(nullable: false, precision: 0),
                        fechaModificacion = c.DateTime(nullable: false, precision: 0),
                        idFacebook = c.String(unicode: false),
                        idGoogle = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.id);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Socio", "idTipoDoc", "dbo.TipoDocumento");
            DropForeignKey("dbo.Socio", "idDomicilio", "dbo.Domicilio");
            DropForeignKey("dbo.Socio", "idContacto", "dbo.Contacto");
            DropForeignKey("dbo.Cliente", "tipoDoc_id", "dbo.TipoDocumento");
            DropIndex("dbo.Socio", new[] { "idContacto" });
            DropIndex("dbo.Socio", new[] { "idDomicilio" });
            DropIndex("dbo.Socio", new[] { "idTipoDoc" });
            DropIndex("dbo.Cliente", new[] { "tipoDoc_id" });
            DropTable("dbo.Usuario");
            DropTable("dbo.Domicilio");
            DropTable("dbo.Contacto");
            DropTable("dbo.Socio");
            DropTable("dbo.EspacioComun");
            DropTable("dbo.TipoDocumento");
            DropTable("dbo.Cliente");
        }
    }
}
