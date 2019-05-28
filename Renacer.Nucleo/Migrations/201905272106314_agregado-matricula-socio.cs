namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class agregadomatriculasocio : DbMigration
    {
        public override void Up()
        {
            RenameTable(name: "Matriculas", newName: "Matricula");
            AddColumn("Socio", "idMatricula", c => c.Int(nullable: false));
            AddColumn("Socio", "fechaPagoMatricula", c => c.DateTime(nullable: false, precision: 0));
            CreateIndex("Socio", "idMatricula");
            AddForeignKey("Socio", "idMatricula", "dbo.Matricula", "id", cascadeDelete: true);
        }
        
        public override void Down()
        {
            DropForeignKey("Socio", "idMatricula", "dbo.Matricula");
            DropIndex("Socio", new[] { "idMatricula" });
            DropColumn("Socio", "fechaPagoMatricula");
            DropColumn("Socio", "idMatricula");
            RenameTable(name: "Matricula", newName: "Matriculas");
        }
    }
}
