namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class cambioAsistenciaDetalle : DbMigration
    {
        public override void Up()
        {
            //DropColumn("dbo.Asistencia", "idDetalleEvento");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Asistencia", "idDetalleEvento", c => c.Int(nullable: false));
        }
    }
}
