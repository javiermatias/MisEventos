namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class matriculaXsocio : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.MatriculaXSocios",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        idSocio = c.Int(nullable: false),
                        idMatricula = c.Int(nullable: false),
                        fechaPago = c.DateTime(nullable: false, precision: 0),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.Matricula", t => t.idMatricula, cascadeDelete: true)
                .ForeignKey("dbo.Socio", t => t.idSocio, cascadeDelete: true)
                .Index(t => t.idSocio)
                .Index(t => t.idMatricula);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.MatriculaXSocios", "idSocio", "dbo.Socio");
            DropForeignKey("dbo.MatriculaXSocios", "idMatricula", "dbo.Matricula");
            DropIndex("dbo.MatriculaXSocios", new[] { "idMatricula" });
            DropIndex("dbo.MatriculaXSocios", new[] { "idSocio" });
            DropTable("dbo.MatriculaXSocios");
        }
    }
}
