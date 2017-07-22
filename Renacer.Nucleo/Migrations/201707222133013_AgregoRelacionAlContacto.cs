namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AgregoRelacionAlContacto : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Contacto", "relacion", c => c.String(unicode: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Contacto", "relacion");
        }
    }
}
