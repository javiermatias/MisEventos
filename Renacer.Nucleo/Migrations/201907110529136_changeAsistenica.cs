namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class changeAsistenica : DbMigration
    {
        public override void Up()
        {
            //AddColumn("dbo.Persona", "Tag_id", c => c.Int());

            DropColumn("dbo.Asistencia", "idDetalleEvento");
            AddColumn("dbo.Asistencia", "idDetalleEvento", c => c.Int());

            AlterColumn("dbo.Asistencia", "idDetalleEvento", c => c.Int(nullable: false));
            CreateIndex("dbo.Asistencia", "idDetalleEvento");
            AddForeignKey("dbo.Asistencia", "idDetalleEvento", "dbo.DetalleEvento", "id", cascadeDelete: true);
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Asistencia", "idDetalleEvento", "dbo.DetalleEvento");
            DropIndex("dbo.Asistencia", new[] { "idDetalleEvento" });
            AlterColumn("dbo.Asistencia", "idDetalleEvento", c => c.Int());
            RenameColumn(table: "dbo.Asistencia", name: "idDetalleEvento", newName: "detalleEvento_id");
            CreateIndex("dbo.Asistencia", "detalleEvento_id");
            AddForeignKey("dbo.Asistencia", "detalleEvento_id", "dbo.DetalleEvento", "id");
        }
    }
}
