namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class HagoNullAlgunasFechas : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Encargado", "fechaBaja", c => c.DateTime(precision: 0));
            AlterColumn("dbo.Encargado", "fechaModificacion", c => c.DateTime(precision: 0));
            AlterColumn("dbo.EspacioComun", "fechaBaja", c => c.DateTime(precision: 0));
            AlterColumn("dbo.EspacioComun", "fechaModificacion", c => c.DateTime(precision: 0));
            AlterColumn("dbo.Socio", "fechaBaja", c => c.DateTime(precision: 0));
            AlterColumn("dbo.Socio", "fechaModificacion", c => c.DateTime(precision: 0));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Socio", "fechaModificacion", c => c.DateTime(nullable: false, precision: 0));
            AlterColumn("dbo.Socio", "fechaBaja", c => c.DateTime(nullable: false, precision: 0));
            AlterColumn("dbo.EspacioComun", "fechaModificacion", c => c.DateTime(nullable: false, precision: 0));
            AlterColumn("dbo.EspacioComun", "fechaBaja", c => c.DateTime(nullable: false, precision: 0));
            AlterColumn("dbo.Encargado", "fechaModificacion", c => c.DateTime(nullable: false, precision: 0));
            AlterColumn("dbo.Encargado", "fechaBaja", c => c.DateTime(nullable: false, precision: 0));
        }
    }
}
