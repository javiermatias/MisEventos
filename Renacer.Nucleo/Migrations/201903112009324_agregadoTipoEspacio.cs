namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class agregadoTipoEspacio : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.TipoEspacio",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.id);
            
            CreateIndex("dbo.EspacioComun", "idTipoEspacio");
            AddForeignKey("dbo.EspacioComun", "idTipoEspacio", "dbo.TipoEspacio", "id", cascadeDelete: true);
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.EspacioComun", "idTipoEspacio", "dbo.TipoEspacio");
            DropIndex("dbo.EspacioComun", new[] { "idTipoEspacio" });
            DropTable("dbo.TipoEspacio");
        }
    }
}
