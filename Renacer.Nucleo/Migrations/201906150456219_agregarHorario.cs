namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class agregarHorario : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Horarios",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        dia = c.String(unicode: false),
                        horaDesde = c.String(unicode: false),
                        horaHasta = c.String(unicode: false),
                        Evento_id = c.Int(),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.Evento", t => t.Evento_id)
                .Index(t => t.Evento_id);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Horarios", "Evento_id", "dbo.Evento");
            DropIndex("dbo.Horarios", new[] { "Evento_id" });
            DropTable("dbo.Horarios");
        }
    }
}
