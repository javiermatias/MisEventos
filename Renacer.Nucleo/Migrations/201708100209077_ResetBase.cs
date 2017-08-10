namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class ResetBase : DbMigration
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
                "dbo.DetalleEvento",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                        descripcion = c.String(unicode: false),
                        idEncargado = c.Int(nullable: false),
                        idEspacio = c.Int(nullable: false),
                        idAsistencia = c.Int(nullable: false),
                        estado = c.Int(nullable: false),
                        fechaDesde = c.DateTime(nullable: false, precision: 0),
                        fechaHasta = c.DateTime(nullable: false, precision: 0),
                        fechaCancelacion = c.DateTime(nullable: false, precision: 0),
                        fechaCreacion = c.DateTime(nullable: false, precision: 0),
                        fechaBaja = c.DateTime(precision: 0),
                        fechaModificacion = c.DateTime(precision: 0),
                        Evento_id = c.Int(),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.Evento", t => t.Evento_id)
                .ForeignKey("dbo.Asistencia", t => t.idAsistencia, cascadeDelete: true)
                .ForeignKey("dbo.EspacioComun", t => t.idEspacio, cascadeDelete: true)
                .ForeignKey("dbo.Encargado", t => t.idEncargado, cascadeDelete: true)
                .Index(t => t.idEncargado)
                .Index(t => t.idEspacio)
                .Index(t => t.idAsistencia)
                .Index(t => t.Evento_id);
            
            CreateTable(
                "dbo.Asistencia",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        estado = c.Int(nullable: false),
                        fechaAsistencia = c.DateTime(nullable: false, precision: 0),
                        fechaCreacion = c.DateTime(nullable: false, precision: 0),
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
                        Asistencia_id = c.Int(),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.Contacto", t => t.idContacto, cascadeDelete: true)
                .ForeignKey("dbo.Domicilio", t => t.idDomicilio, cascadeDelete: true)
                .ForeignKey("dbo.TipoDocumento", t => t.idTipoDoc, cascadeDelete: true)
                .ForeignKey("dbo.Asistencia", t => t.Asistencia_id)
                .Index(t => t.idTipoDoc)
                .Index(t => t.idDomicilio)
                .Index(t => t.idContacto)
                .Index(t => t.Asistencia_id);
            
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
                "dbo.Evento",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        cupoMaximo = c.Int(nullable: false),
                        cupoMinimo = c.Int(nullable: false),
                        nombre = c.String(unicode: false),
                        monto = c.Single(nullable: false),
                        descripcion = c.String(unicode: false),
                        estado = c.Int(nullable: false),
                        idEspacio = c.Int(nullable: false),
                        idTipoEvento = c.Int(nullable: false),
                        idEncargado = c.Int(nullable: false),
                        fechaDesde = c.DateTime(nullable: false, precision: 0),
                        fechaHasta = c.DateTime(nullable: false, precision: 0),
                        fechaDesdeInscripcion = c.DateTime(nullable: false, precision: 0),
                        fechaHastaInscripcion = c.DateTime(nullable: false, precision: 0),
                        fechaCreacion = c.DateTime(nullable: false, precision: 0),
                        fechaBaja = c.DateTime(precision: 0),
                        fechaModificacion = c.DateTime(precision: 0),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.EspacioComun", t => t.idEspacio, cascadeDelete: true)
                .ForeignKey("dbo.Encargado", t => t.idEncargado, cascadeDelete: true)
                .ForeignKey("dbo.TipoEvento", t => t.idTipoEvento, cascadeDelete: true)
                .Index(t => t.idEspacio)
                .Index(t => t.idTipoEvento)
                .Index(t => t.idEncargado);
            
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
                "dbo.Tags",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                        descripcion = c.String(unicode: false),
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
                "dbo.TipoEvento",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        descripcion = c.String(unicode: false),
                        nombre = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.id);
            
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
                .ForeignKey("dbo.Evento", t => t.idGrupoDeEventos, cascadeDelete: true)
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
                "dbo.EncargadoTags",
                c => new
                    {
                        Encargado_id = c.Int(nullable: false),
                        Tag_id = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.Encargado_id, t.Tag_id })
                .ForeignKey("dbo.Encargado", t => t.Encargado_id, cascadeDelete: true)
                .ForeignKey("dbo.Tags", t => t.Tag_id, cascadeDelete: true)
                .Index(t => t.Encargado_id)
                .Index(t => t.Tag_id);
            
            CreateTable(
                "dbo.TagEspacioComuns",
                c => new
                    {
                        Tag_id = c.Int(nullable: false),
                        EspacioComun_id = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.Tag_id, t.EspacioComun_id })
                .ForeignKey("dbo.Tags", t => t.Tag_id, cascadeDelete: true)
                .ForeignKey("dbo.EspacioComun", t => t.EspacioComun_id, cascadeDelete: true)
                .Index(t => t.Tag_id)
                .Index(t => t.EspacioComun_id);
            
            CreateTable(
                "dbo.TagEventoes",
                c => new
                    {
                        Tag_id = c.Int(nullable: false),
                        Evento_id = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.Tag_id, t.Evento_id })
                .ForeignKey("dbo.Tags", t => t.Tag_id, cascadeDelete: true)
                .ForeignKey("dbo.Evento", t => t.Evento_id, cascadeDelete: true)
                .Index(t => t.Tag_id)
                .Index(t => t.Evento_id);
            
            CreateTable(
                "dbo.TagSocios",
                c => new
                    {
                        Tag_id = c.Int(nullable: false),
                        Socio_id = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.Tag_id, t.Socio_id })
                .ForeignKey("dbo.Tags", t => t.Tag_id, cascadeDelete: true)
                .ForeignKey("dbo.Socio", t => t.Socio_id, cascadeDelete: true)
                .Index(t => t.Tag_id)
                .Index(t => t.Socio_id);
            
            CreateTable(
                "dbo.EventoSocios",
                c => new
                    {
                        Evento_id = c.Int(nullable: false),
                        Socio_id = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.Evento_id, t.Socio_id })
                .ForeignKey("dbo.Evento", t => t.Evento_id, cascadeDelete: true)
                .ForeignKey("dbo.Socio", t => t.Socio_id, cascadeDelete: true)
                .Index(t => t.Evento_id)
                .Index(t => t.Socio_id);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.DetalleEvento", "idEncargado", "dbo.Encargado");
            DropForeignKey("dbo.DetalleEvento", "idEspacio", "dbo.EspacioComun");
            DropForeignKey("dbo.DetalleEvento", "idAsistencia", "dbo.Asistencia");
            DropForeignKey("dbo.Socio", "Asistencia_id", "dbo.Asistencia");
            DropForeignKey("dbo.Socio", "idTipoDoc", "dbo.TipoDocumento");
            DropForeignKey("dbo.Inscripcion", "Socio_id", "dbo.Socio");
            DropForeignKey("dbo.Inscripcion", "idPago", "dbo.Pago");
            DropForeignKey("dbo.Inscripcion", "idGrupoDeEventos", "dbo.Evento");
            DropForeignKey("dbo.Evento", "idTipoEvento", "dbo.TipoEvento");
            DropForeignKey("dbo.Evento", "idEncargado", "dbo.Encargado");
            DropForeignKey("dbo.EventoSocios", "Socio_id", "dbo.Socio");
            DropForeignKey("dbo.EventoSocios", "Evento_id", "dbo.Evento");
            DropForeignKey("dbo.DetalleEvento", "Evento_id", "dbo.Evento");
            DropForeignKey("dbo.Evento", "idEspacio", "dbo.EspacioComun");
            DropForeignKey("dbo.TagSocios", "Socio_id", "dbo.Socio");
            DropForeignKey("dbo.TagSocios", "Tag_id", "dbo.Tags");
            DropForeignKey("dbo.TagEventoes", "Evento_id", "dbo.Evento");
            DropForeignKey("dbo.TagEventoes", "Tag_id", "dbo.Tags");
            DropForeignKey("dbo.TagEspacioComuns", "EspacioComun_id", "dbo.EspacioComun");
            DropForeignKey("dbo.TagEspacioComuns", "Tag_id", "dbo.Tags");
            DropForeignKey("dbo.Encargado", "idTipoDoc", "dbo.TipoDocumento");
            DropForeignKey("dbo.EncargadoTags", "Tag_id", "dbo.Tags");
            DropForeignKey("dbo.EncargadoTags", "Encargado_id", "dbo.Encargado");
            DropForeignKey("dbo.Encargado", "idDomicilio", "dbo.Domicilio");
            DropForeignKey("dbo.Socio", "idDomicilio", "dbo.Domicilio");
            DropForeignKey("dbo.Socio", "idContacto", "dbo.Contacto");
            DropForeignKey("dbo.Cliente", "tipoDoc_id", "dbo.TipoDocumento");
            DropIndex("dbo.EventoSocios", new[] { "Socio_id" });
            DropIndex("dbo.EventoSocios", new[] { "Evento_id" });
            DropIndex("dbo.TagSocios", new[] { "Socio_id" });
            DropIndex("dbo.TagSocios", new[] { "Tag_id" });
            DropIndex("dbo.TagEventoes", new[] { "Evento_id" });
            DropIndex("dbo.TagEventoes", new[] { "Tag_id" });
            DropIndex("dbo.TagEspacioComuns", new[] { "EspacioComun_id" });
            DropIndex("dbo.TagEspacioComuns", new[] { "Tag_id" });
            DropIndex("dbo.EncargadoTags", new[] { "Tag_id" });
            DropIndex("dbo.EncargadoTags", new[] { "Encargado_id" });
            DropIndex("dbo.Inscripcion", new[] { "Socio_id" });
            DropIndex("dbo.Inscripcion", new[] { "idPago" });
            DropIndex("dbo.Inscripcion", new[] { "idGrupoDeEventos" });
            DropIndex("dbo.Encargado", new[] { "idDomicilio" });
            DropIndex("dbo.Encargado", new[] { "idTipoDoc" });
            DropIndex("dbo.Evento", new[] { "idEncargado" });
            DropIndex("dbo.Evento", new[] { "idTipoEvento" });
            DropIndex("dbo.Evento", new[] { "idEspacio" });
            DropIndex("dbo.Socio", new[] { "Asistencia_id" });
            DropIndex("dbo.Socio", new[] { "idContacto" });
            DropIndex("dbo.Socio", new[] { "idDomicilio" });
            DropIndex("dbo.Socio", new[] { "idTipoDoc" });
            DropIndex("dbo.DetalleEvento", new[] { "Evento_id" });
            DropIndex("dbo.DetalleEvento", new[] { "idAsistencia" });
            DropIndex("dbo.DetalleEvento", new[] { "idEspacio" });
            DropIndex("dbo.DetalleEvento", new[] { "idEncargado" });
            DropIndex("dbo.Cliente", new[] { "tipoDoc_id" });
            DropTable("dbo.EventoSocios");
            DropTable("dbo.TagSocios");
            DropTable("dbo.TagEventoes");
            DropTable("dbo.TagEspacioComuns");
            DropTable("dbo.EncargadoTags");
            DropTable("dbo.Usuario");
            DropTable("dbo.Pago");
            DropTable("dbo.Inscripcion");
            DropTable("dbo.TipoEvento");
            DropTable("dbo.Encargado");
            DropTable("dbo.Tags");
            DropTable("dbo.EspacioComun");
            DropTable("dbo.Evento");
            DropTable("dbo.Domicilio");
            DropTable("dbo.Contacto");
            DropTable("dbo.Socio");
            DropTable("dbo.Asistencia");
            DropTable("dbo.DetalleEvento");
            DropTable("dbo.TipoDocumento");
            DropTable("dbo.Cliente");
        }
    }
}
