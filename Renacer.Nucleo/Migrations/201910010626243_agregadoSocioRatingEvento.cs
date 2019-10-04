namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class agregadoSocioRatingEvento : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.RatingEvento", "idSocio", c => c.Int(nullable: false));
            CreateIndex("dbo.RatingEvento", "idSocio");
            AddForeignKey("dbo.RatingEvento", "idSocio", "dbo.Socio", "id", cascadeDelete: true);
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.RatingEvento", "idSocio", "dbo.Socio");
            DropIndex("dbo.RatingEvento", new[] { "idSocio" });
            DropColumn("dbo.RatingEvento", "idSocio");
        }
    }
}
