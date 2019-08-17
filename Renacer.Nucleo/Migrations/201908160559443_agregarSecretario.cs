namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class agregarSecretario : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Secretario",
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
                        idTipoDoc = c.Int(nullable: false),
                        nroDocumento = c.String(unicode: false),
                        fechaNacimiento = c.DateTime(precision: 0),
                        fechaCreacion = c.DateTime(nullable: false, precision: 0),
                        fechaBaja = c.DateTime(precision: 0),
                        estado = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.TipoDocumento", t => t.idTipoDoc, cascadeDelete: true)
                .Index(t => t.idTipoDoc);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Secretario", "idTipoDoc", "dbo.TipoDocumento");
            DropIndex("dbo.Secretario", new[] { "idTipoDoc" });
            DropTable("dbo.Secretario");
        }
    }
}
