namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class BaseInicial : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Cliente",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(maxLength: 45, unicode: false),
                        apellido = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.id);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Cliente");
        }
    }
}
