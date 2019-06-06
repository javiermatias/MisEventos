namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class cambiosSocio : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Socio", "estado", c => c.String(unicode: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Socio", "estado");
        }
    }
}
