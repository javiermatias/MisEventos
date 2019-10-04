namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class agregadoRatingEvento : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.RatingEvento",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        ratingEvento = c.Int(nullable: false),
                        ratingContenido = c.Int(nullable: false),
                        ratingEncargado = c.Int(nullable: false),
                        textoDescripcion = c.String(unicode: false),
                        idEvento = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.Evento", t => t.idEvento, cascadeDelete: true)
                .Index(t => t.idEvento);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.RatingEvento", "idEvento", "dbo.Evento");
            DropIndex("dbo.RatingEvento", new[] { "idEvento" });
            DropTable("dbo.RatingEvento");
        }
    }
}
