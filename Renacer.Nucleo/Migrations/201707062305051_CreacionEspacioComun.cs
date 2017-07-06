namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class CreacionEspacioComun : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.EspacioComun",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                        descripcion = c.String(unicode: false),
                        capacidad = c.Int(nullable: false),
                        fechaCreacion = c.DateTime(nullable: false, precision: 0),
                        fechaBaja = c.DateTime(nullable: false, precision: 0),
                        fechaModificacion = c.DateTime(nullable: false, precision: 0),
                        idDireccion = c.Int(nullable: false),
                        idTipoEspacio = c.Int(nullable: false),
                        estado = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.id);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.EspacioComun");
        }
    }
}
