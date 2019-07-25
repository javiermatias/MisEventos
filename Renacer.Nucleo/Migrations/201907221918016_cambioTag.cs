namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class cambioTag : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Persona", "Tag_id", "dbo.Tags");
            DropIndex("dbo.Persona", new[] { "Tag_id" });
            DropColumn("dbo.Tags", "descripcion");
            DropColumn("dbo.Persona", "Tag_id");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Persona", "Tag_id", c => c.Int());
            AddColumn("dbo.Tags", "descripcion", c => c.String(unicode: false));
            CreateIndex("dbo.Persona", "Tag_id");
            AddForeignKey("dbo.Persona", "Tag_id", "dbo.Tags", "id");
        }
    }
}
