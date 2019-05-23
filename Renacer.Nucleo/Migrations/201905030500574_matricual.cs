namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class matricual : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Matriculas",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        año = c.DateTime(nullable: false, precision: 0),
                        fechaVencimiento = c.DateTime(nullable: false, precision: 0),
                        estado = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.id);
            
            AddColumn("dbo.Persona", "baja", c => c.Boolean(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Persona", "baja");
            DropTable("dbo.Matriculas");
        }
    }
}
