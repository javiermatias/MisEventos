namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class quitarAsociacion : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Pago", "Asociacion_id", "dbo.Asociacion");
            DropForeignKey("dbo.Asociacion", "idSocio", "dbo.Socio");
            DropIndex("dbo.Asociacion", new[] { "idSocio" });
            DropIndex("dbo.Pago", new[] { "Asociacion_id" });
            DropColumn("dbo.Pago", "Asociacion_id");
            DropTable("dbo.Asociacion");
        }
        
        public override void Down()
        {
            CreateTable(
                "dbo.Asociacion",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        idSocio = c.Int(nullable: false),
                        estado = c.Int(nullable: false),
                        fechaInicio = c.DateTime(nullable: false, precision: 0),
                        fechaFin = c.DateTime(nullable: false, precision: 0),
                        fechaCreacion = c.DateTime(nullable: false, precision: 0),
                        fechaModificacion = c.DateTime(precision: 0),
                    })
                .PrimaryKey(t => t.id);
            
            AddColumn("dbo.Pago", "Asociacion_id", c => c.Int());
            CreateIndex("dbo.Pago", "Asociacion_id");
            CreateIndex("dbo.Asociacion", "idSocio");
            AddForeignKey("dbo.Asociacion", "idSocio", "dbo.Socio", "id", cascadeDelete: true);
            AddForeignKey("dbo.Pago", "Asociacion_id", "dbo.Asociacion", "id");
        }
    }
}
