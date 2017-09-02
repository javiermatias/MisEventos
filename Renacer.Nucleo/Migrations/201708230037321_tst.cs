namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class tst : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Usuario", "token", c => c.String(unicode: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Usuario", "token");
        }
    }
}
