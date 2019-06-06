namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class recordatorios : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Recordatorios",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        fechaRecordatorio = c.DateTime(nullable: false, precision: 0),
                        titulo = c.String(unicode: false),
                        descripcion = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.id);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Recordatorios");
        }
    }
}
