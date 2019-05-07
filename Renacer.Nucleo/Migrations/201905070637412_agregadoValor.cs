namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class agregadoValor : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Matriculas", "valor", c => c.Int(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Matriculas", "valor");
        }
    }
}
