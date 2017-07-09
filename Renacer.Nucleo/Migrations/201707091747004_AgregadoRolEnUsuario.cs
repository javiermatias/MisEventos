namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AgregadoRolEnUsuario : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Usuario", "rol", c => c.String(unicode: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Usuario", "rol");
        }
    }
}
