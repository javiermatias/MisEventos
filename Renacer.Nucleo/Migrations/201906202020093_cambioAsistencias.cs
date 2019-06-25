namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class cambioAsistencias : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.DetalleEvento", "idAsistencia", "dbo.Asistencia");
            DropIndex("dbo.DetalleEvento", new[] { "idAsistencia" });
            DropColumn("dbo.DetalleEvento", "idAsistencia");
        }
        
        public override void Down()
        {
            AddColumn("dbo.DetalleEvento", "idAsistencia", c => c.Int(nullable: false));
            CreateIndex("dbo.DetalleEvento", "idAsistencia");
            AddForeignKey("dbo.DetalleEvento", "idAsistencia", "dbo.Asistencia", "id", cascadeDelete: true);
        }
    }
}
