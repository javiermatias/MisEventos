namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class agregadoEstadoInscripcion : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Inscripcion", "estado", c => c.String(unicode: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Inscripcion", "estado");
        }
    }
}
