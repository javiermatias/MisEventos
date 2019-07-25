namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class cambioSocio1 : DbMigration
    {
        public override void Up()
        {
            DropColumn("dbo.Socio", "fechaModificacion");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Socio", "fechaModificacion", c => c.DateTime(precision: 0));
        }
    }
}
