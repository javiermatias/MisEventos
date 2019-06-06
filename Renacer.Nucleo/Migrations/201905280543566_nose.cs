namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class nose : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("Socio", "idMatricula", "Matricula");
            DropIndex("Socio", new[] { "idMatricula" });
            DropColumn("Socio", "idMatricula");
            DropColumn("Socio", "fechaPagoMatricula");
        }
        
        public override void Down()
        {
            AddColumn("Socio", "fechaPagoMatricula", c => c.DateTime(nullable: false, precision: 0));
            AddColumn("Socio", "idMatricula", c => c.Int(nullable: false));
            CreateIndex("Socio", "idMatricula");
            AddForeignKey("Socio", "idMatricula", "Matricula", "id", cascadeDelete: true);
        }
    }
}
