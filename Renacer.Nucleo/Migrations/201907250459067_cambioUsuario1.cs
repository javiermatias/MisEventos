namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class cambioUsuario1 : DbMigration
    {
        public override void Up()
        {
            DropColumn("dbo.Usuario", "idFacebook");
            DropColumn("dbo.Usuario", "idGoogle");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Usuario", "idGoogle", c => c.String(unicode: false));
            AddColumn("dbo.Usuario", "idFacebook", c => c.String(unicode: false));
        }
    }
}
