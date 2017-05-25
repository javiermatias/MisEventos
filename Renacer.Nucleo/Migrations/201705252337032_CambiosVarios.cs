namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class CambiosVarios : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Cliente", "nombre", c => c.String(unicode: false));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Cliente", "nombre", c => c.String(maxLength: 45, unicode: false));
        }
    }
}
