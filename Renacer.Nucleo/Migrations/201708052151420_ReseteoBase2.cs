namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class ReseteoBase2 : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Cliente",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                        apellido = c.String(unicode: false),
                        tipoDoc_id = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.TipoDocumento", t => t.tipoDoc_id, cascadeDelete: true)
                .Index(t => t.tipoDoc_id);
            
            CreateTable(
                "dbo.TipoDocumento",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.Encargado",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                        apellido = c.String(unicode: false),
                        telefono = c.String(unicode: false),
                        celular = c.String(unicode: false),
                        email = c.String(unicode: false),
                        idTipoDoc = c.Int(nullable: false),
                        nroDocumento = c.String(unicode: false),
                        idDomicilio = c.Int(nullable: false),
                        fechaCreacion = c.DateTime(nullable: false, precision: 0),
                        fechaBaja = c.DateTime(precision: 0),
                        fechaModificacion = c.DateTime(precision: 0),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.Domicilio", t => t.idDomicilio, cascadeDelete: true)
                .ForeignKey("dbo.TipoDocumento", t => t.idTipoDoc, cascadeDelete: true)
                .Index(t => t.idTipoDoc)
                .Index(t => t.idDomicilio);
            
            CreateTable(
                "dbo.Domicilio",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        barrio = c.String(unicode: false),
                        calle = c.String(unicode: false),
                        piso = c.String(unicode: false),
                        nro = c.String(unicode: false),
                        codPostal = c.Int(nullable: false),
                        depto = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.Tags",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                        descripcion = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.EspacioComun",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                        descripcion = c.String(unicode: false),
                        capacidad = c.Int(nullable: false),
                        fechaCreacion = c.DateTime(nullable: false, precision: 0),
                        fechaBaja = c.DateTime(precision: 0),
                        fechaModificacion = c.DateTime(precision: 0),
                        idTipoEspacio = c.Int(nullable: false),
                        estado = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.Evento",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        cupoMaximo = c.Int(nullable: false),
                        cupoMinimo = c.Int(nullable: false),
                        nombre = c.String(unicode: false),
                        descripcion = c.String(unicode: false),
                        idEncargado = c.Int(nullable: false),
                        idEspacio = c.Int(nullable: false),
                        idTipoEvento = c.Int(nullable: false),
                        estado = c.String(unicode: false),
                        fechaDesde = c.DateTime(nullable: false, precision: 0),
                        fechaHasta = c.DateTime(nullable: false, precision: 0),
                        fechaCreacion = c.DateTime(nullable: false, precision: 0),
                        fechaBaja = c.DateTime(precision: 0),
                        fechaModificacion = c.DateTime(precision: 0),
                        GrupoDeEventos_id = c.Int(),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.EspacioComun", t => t.idEspacio, cascadeDelete: true)
                .ForeignKey("dbo.Encargado", t => t.idEncargado, cascadeDelete: true)
                .ForeignKey("dbo.TipoEvento", t => t.idTipoEvento, cascadeDelete: true)
                .ForeignKey("dbo.GrupoDeEventos", t => t.GrupoDeEventos_id)
                .Index(t => t.idEncargado)
                .Index(t => t.idEspacio)
                .Index(t => t.idTipoEvento)
                .Index(t => t.GrupoDeEventos_id);
            
            CreateTable(
                "dbo.TipoEvento",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        descripcion = c.String(unicode: false),
                        nombre = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.GrupoDeEventos",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        cupoMaximo = c.Int(nullable: false),
                        cupoMinimo = c.Int(nullable: false),
                        nombre = c.String(unicode: false),
                        descripcion = c.String(unicode: false),
                        idEspacio = c.Int(nullable: false),
                        fechaCreacion = c.DateTime(nullable: false, precision: 0),
                        fechaBaja = c.DateTime(precision: 0),
                        fechaModificacion = c.DateTime(precision: 0),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.EspacioComun", t => t.idEspacio, cascadeDelete: true)
                .Index(t => t.idEspacio);
            
            CreateTable(
                "dbo.Inscripcion",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        idGrupoDeEventos = c.Int(nullable: false),
                        idPago = c.Int(nullable: false),
                        fechaCreacion = c.DateTime(nullable: false, precision: 0),
                        fechaBaja = c.DateTime(precision: 0),
                        fechaModificacion = c.DateTime(precision: 0),
                        Socio_id = c.Int(),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.GrupoDeEventos", t => t.idGrupoDeEventos, cascadeDelete: true)
                .ForeignKey("dbo.Pago", t => t.idPago, cascadeDelete: true)
                .ForeignKey("dbo.Socio", t => t.Socio_id)
                .Index(t => t.idGrupoDeEventos)
                .Index(t => t.idPago)
                .Index(t => t.Socio_id);
            
            CreateTable(
                "dbo.Pago",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        monto = c.Single(nullable: false),
                        nroRecibo = c.Int(nullable: false),
                        fechaCobro = c.DateTime(nullable: false, precision: 0),
                        fechaCreacion = c.DateTime(nullable: false, precision: 0),
                        fechaBaja = c.DateTime(precision: 0),
                        fechaModificacion = c.DateTime(precision: 0),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.Socio",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                        apellido = c.String(unicode: false),
                        telefono = c.String(unicode: false),
                        celular = c.String(unicode: false),
                        email = c.String(unicode: false),
                        idTipoDoc = c.Int(nullable: false),
                        nroDocumento = c.String(unicode: false),
                        idDomicilio = c.Int(nullable: false),
                        idContacto = c.Int(nullable: false),
                        fechaCreacion = c.DateTime(nullable: false, precision: 0),
                        fechaBaja = c.DateTime(precision: 0),
                        fechaModificacion = c.DateTime(precision: 0),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.Contacto", t => t.idContacto, cascadeDelete: true)
                .ForeignKey("dbo.Domicilio", t => t.idDomicilio, cascadeDelete: true)
                .ForeignKey("dbo.TipoDocumento", t => t.idTipoDoc, cascadeDelete: true)
                .Index(t => t.idTipoDoc)
                .Index(t => t.idDomicilio)
                .Index(t => t.idContacto);
            
            CreateTable(
                "dbo.Contacto",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                        apellido = c.String(unicode: false),
                        telefono = c.String(unicode: false),
                        celular = c.String(unicode: false),
                        email = c.String(unicode: false),
                        relacion = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.Usuario",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                        usuario = c.String(unicode: false),
                        clave = c.String(unicode: false),
                        imagen = c.String(unicode: false),
                        rol = c.String(unicode: false),
                        email = c.String(unicode: false),
                        fechaCreacion = c.DateTime(nullable: false, precision: 0),
                        fechaBaja = c.DateTime(nullable: false, precision: 0),
                        fechaUltimoAcceso = c.DateTime(nullable: false, precision: 0),
                        fechaModificacion = c.DateTime(nullable: false, precision: 0),
                        idFacebook = c.String(unicode: false),
                        idGoogle = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.TagEncargadoes",
                c => new
                    {
                        Tag_id = c.Int(nullable: false),
                        Encargado_id = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.Tag_id, t.Encargado_id })
                .ForeignKey("dbo.Tags", t => t.Tag_id, cascadeDelete: true)
                .ForeignKey("dbo.Encargado", t => t.Encargado_id, cascadeDelete: true)
                .Index(t => t.Tag_id)
                .Index(t => t.Encargado_id);
            
            CreateTable(
                "dbo.EspacioComunTags",
                c => new
                    {
                        EspacioComun_id = c.Int(nullable: false),
                        Tag_id = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.EspacioComun_id, t.Tag_id })
                .ForeignKey("dbo.EspacioComun", t => t.EspacioComun_id, cascadeDelete: true)
                .ForeignKey("dbo.Tags", t => t.Tag_id, cascadeDelete: true)
                .Index(t => t.EspacioComun_id)
                .Index(t => t.Tag_id);
            
            CreateTable(
                "dbo.EventoTags",
                c => new
                    {
                        Evento_id = c.Int(nullable: false),
                        Tag_id = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.Evento_id, t.Tag_id })
                .ForeignKey("dbo.Evento", t => t.Evento_id, cascadeDelete: true)
                .ForeignKey("dbo.Tags", t => t.Tag_id, cascadeDelete: true)
                .Index(t => t.Evento_id)
                .Index(t => t.Tag_id);
            
            CreateTable(
                "dbo.GrupoDeEventosTags",
                c => new
                    {
                        GrupoDeEventos_id = c.Int(nullable: false),
                        Tag_id = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.GrupoDeEventos_id, t.Tag_id })
                .ForeignKey("dbo.GrupoDeEventos", t => t.GrupoDeEventos_id, cascadeDelete: true)
                .ForeignKey("dbo.Tags", t => t.Tag_id, cascadeDelete: true)
                .Index(t => t.GrupoDeEventos_id)
                .Index(t => t.Tag_id);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Socio", "idTipoDoc", "dbo.TipoDocumento");
            DropForeignKey("dbo.Inscripcion", "Socio_id", "dbo.Socio");
            DropForeignKey("dbo.Socio", "idDomicilio", "dbo.Domicilio");
            DropForeignKey("dbo.Socio", "idContacto", "dbo.Contacto");
            DropForeignKey("dbo.Inscripcion", "idPago", "dbo.Pago");
            DropForeignKey("dbo.Inscripcion", "idGrupoDeEventos", "dbo.GrupoDeEventos");
            DropForeignKey("dbo.Encargado", "idTipoDoc", "dbo.TipoDocumento");
            DropForeignKey("dbo.GrupoDeEventosTags", "Tag_id", "dbo.Tags");
            DropForeignKey("dbo.GrupoDeEventosTags", "GrupoDeEventos_id", "dbo.GrupoDeEventos");
            DropForeignKey("dbo.Evento", "GrupoDeEventos_id", "dbo.GrupoDeEventos");
            DropForeignKey("dbo.GrupoDeEventos", "idEspacio", "dbo.EspacioComun");
            DropForeignKey("dbo.Evento", "idTipoEvento", "dbo.TipoEvento");
            DropForeignKey("dbo.Evento", "idEncargado", "dbo.Encargado");
            DropForeignKey("dbo.EventoTags", "Tag_id", "dbo.Tags");
            DropForeignKey("dbo.EventoTags", "Evento_id", "dbo.Evento");
            DropForeignKey("dbo.Evento", "idEspacio", "dbo.EspacioComun");
            DropForeignKey("dbo.EspacioComunTags", "Tag_id", "dbo.Tags");
            DropForeignKey("dbo.EspacioComunTags", "EspacioComun_id", "dbo.EspacioComun");
            DropForeignKey("dbo.TagEncargadoes", "Encargado_id", "dbo.Encargado");
            DropForeignKey("dbo.TagEncargadoes", "Tag_id", "dbo.Tags");
            DropForeignKey("dbo.Encargado", "idDomicilio", "dbo.Domicilio");
            DropForeignKey("dbo.Cliente", "tipoDoc_id", "dbo.TipoDocumento");
            DropIndex("dbo.GrupoDeEventosTags", new[] { "Tag_id" });
            DropIndex("dbo.GrupoDeEventosTags", new[] { "GrupoDeEventos_id" });
            DropIndex("dbo.EventoTags", new[] { "Tag_id" });
            DropIndex("dbo.EventoTags", new[] { "Evento_id" });
            DropIndex("dbo.EspacioComunTags", new[] { "Tag_id" });
            DropIndex("dbo.EspacioComunTags", new[] { "EspacioComun_id" });
            DropIndex("dbo.TagEncargadoes", new[] { "Encargado_id" });
            DropIndex("dbo.TagEncargadoes", new[] { "Tag_id" });
            DropIndex("dbo.Socio", new[] { "idContacto" });
            DropIndex("dbo.Socio", new[] { "idDomicilio" });
            DropIndex("dbo.Socio", new[] { "idTipoDoc" });
            DropIndex("dbo.Inscripcion", new[] { "Socio_id" });
            DropIndex("dbo.Inscripcion", new[] { "idPago" });
            DropIndex("dbo.Inscripcion", new[] { "idGrupoDeEventos" });
            DropIndex("dbo.GrupoDeEventos", new[] { "idEspacio" });
            DropIndex("dbo.Evento", new[] { "GrupoDeEventos_id" });
            DropIndex("dbo.Evento", new[] { "idTipoEvento" });
            DropIndex("dbo.Evento", new[] { "idEspacio" });
            DropIndex("dbo.Evento", new[] { "idEncargado" });
            DropIndex("dbo.Encargado", new[] { "idDomicilio" });
            DropIndex("dbo.Encargado", new[] { "idTipoDoc" });
            DropIndex("dbo.Cliente", new[] { "tipoDoc_id" });
            DropTable("dbo.GrupoDeEventosTags");
            DropTable("dbo.EventoTags");
            DropTable("dbo.EspacioComunTags");
            DropTable("dbo.TagEncargadoes");
            DropTable("dbo.Usuario");
            DropTable("dbo.Contacto");
            DropTable("dbo.Socio");
            DropTable("dbo.Pago");
            DropTable("dbo.Inscripcion");
            DropTable("dbo.GrupoDeEventos");
            DropTable("dbo.TipoEvento");
            DropTable("dbo.Evento");
            DropTable("dbo.EspacioComun");
            DropTable("dbo.Tags");
            DropTable("dbo.Domicilio");
            DropTable("dbo.Encargado");
            DropTable("dbo.TipoDocumento");
            DropTable("dbo.Cliente");
        }
    }
}
