namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class incial : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Asistencia",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        idSocio = c.Int(nullable: false),
                        idEncargado = c.Int(nullable: false),
                        idDetalleEvento = c.Int(nullable: false),
                        estado = c.Boolean(nullable: false),
                        fechaAsistencia = c.DateTime(nullable: false, precision: 0),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.DetalleEvento", t => t.idDetalleEvento)
                .ForeignKey("dbo.Encargado", t => t.idEncargado)
                .ForeignKey("dbo.Socio", t => t.idSocio)
                .Index(t => t.idSocio)
                .Index(t => t.idEncargado)
                .Index(t => t.idDetalleEvento);
            
            CreateTable(
                "dbo.DetalleEvento",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                        descripcion = c.String(unicode: false),
                        idEncargado = c.Int(nullable: false),
                        idEvento = c.Int(nullable: false),
                        idEspacio = c.Int(nullable: false),
                        fechaDesde = c.DateTime(nullable: false, precision: 0),
                        fechaHasta = c.DateTime(nullable: false, precision: 0),
                        fechaBaja = c.DateTime(precision: 0),
                        estado = c.String(unicode: false),
                        dia = c.String(unicode: false),
                        asistencia = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.EspacioComun", t => t.idEspacio)
                .ForeignKey("dbo.Evento", t => t.idEvento)
                .ForeignKey("dbo.Encargado", t => t.idEncargado)
                .Index(t => t.idEncargado)
                .Index(t => t.idEvento)
                .Index(t => t.idEspacio);
            
            CreateTable(
                "dbo.EspacioComun",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                        descripcion = c.String(unicode: false),
                        capacidad = c.Int(nullable: false),
                        idTipoEspacio = c.Int(nullable: false),
                        estado = c.Int(nullable: false),
                        fechaCreacion = c.DateTime(nullable: false, precision: 0),
                        fechaBaja = c.DateTime(precision: 0),
                        fechaModificacion = c.DateTime(precision: 0),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.TipoEspacio", t => t.idTipoEspacio)
                .Index(t => t.idTipoEspacio);
            
            CreateTable(
                "dbo.Tags",
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
                .ForeignKey("dbo.Domicilio", t => t.idDomicilio)
                .ForeignKey("dbo.TipoDocumento", t => t.idTipoDoc)
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
                "dbo.TipoDocumento",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
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
                        sexo = c.String(unicode: false),
                        estadoCivil = c.String(unicode: false),
                        idTipoDoc = c.Int(nullable: false),
                        nroDocumento = c.String(unicode: false),
                        idDomicilio = c.Int(nullable: false),
                        idContacto = c.Int(nullable: false),
                        fechaNacimiento = c.DateTime(precision: 0),
                        fechaCreacion = c.DateTime(nullable: false, precision: 0),
                        fechaBaja = c.DateTime(precision: 0),
                        estado = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.Contacto", t => t.idContacto)
                .ForeignKey("dbo.Domicilio", t => t.idDomicilio)
                .ForeignKey("dbo.TipoDocumento", t => t.idTipoDoc)
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
                "dbo.TipoEspacio",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.Evento",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                        descripcion = c.String(unicode: false),
                        idTipoEvento = c.Int(nullable: false),
                        idEspacio = c.Int(nullable: false),
                        idEncargado = c.Int(nullable: false),
                        cupoMinimo = c.Int(nullable: false),
                        cupoMaximo = c.Int(nullable: false),
                        gratuito = c.Boolean(nullable: false),
                        monto = c.Single(nullable: false),
                        cantidadCuota = c.Int(nullable: false),
                        fechaDesde = c.DateTime(nullable: false, precision: 0),
                        fechaHasta = c.DateTime(nullable: false, precision: 0),
                        fechaDesdeInscripcion = c.DateTime(nullable: false, precision: 0),
                        fechaHastaInscripcion = c.DateTime(nullable: false, precision: 0),
                        estado = c.String(unicode: false),
                        fechaCreacion = c.DateTime(nullable: false, precision: 0),
                        fechaBaja = c.DateTime(precision: 0),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.EspacioComun", t => t.idEspacio)
                .ForeignKey("dbo.Encargado", t => t.idEncargado)
                .ForeignKey("dbo.TipoEvento", t => t.idTipoEvento)
                .Index(t => t.idTipoEvento)
                .Index(t => t.idEspacio)
                .Index(t => t.idEncargado);
            
            CreateTable(
                "dbo.Cuotas",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                        monto = c.Decimal(nullable: false, precision: 18, scale: 2),
                        Evento_id = c.Int(),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.Evento", t => t.Evento_id)
                .Index(t => t.Evento_id);
            
            CreateTable(
                "dbo.Horarios",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        dia = c.String(unicode: false),
                        dayOfWeek = c.Int(nullable: false),
                        horaDesde = c.String(unicode: false),
                        horaHasta = c.String(unicode: false),
                        Evento_id = c.Int(),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.Evento", t => t.Evento_id)
                .Index(t => t.Evento_id);
            
            CreateTable(
                "dbo.Inscripcion",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        idEvento = c.Int(nullable: false),
                        idSocio = c.Int(nullable: false),
                        fechaCreacion = c.DateTime(nullable: false, precision: 0),
                        fechaBaja = c.DateTime(precision: 0),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.Evento", t => t.idEvento)
                .ForeignKey("dbo.Socio", t => t.idSocio)
                .Index(t => t.idEvento)
                .Index(t => t.idSocio);
            
            CreateTable(
                "dbo.Pago",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                        monto = c.Single(nullable: false),
                        nroRecibo = c.Int(nullable: false),
                        idInscripcion = c.Int(nullable: false),
                        fechaCobro = c.DateTime(nullable: false, precision: 0),
                        fechaBaja = c.DateTime(nullable: false, precision: 0),
                        estaPagado = c.Boolean(nullable: false),
                        idCuota = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.Cuotas", t => t.idCuota)
                .ForeignKey("dbo.Inscripcion", t => t.idInscripcion)
                .Index(t => t.idInscripcion)
                .Index(t => t.idCuota);
            
            CreateTable(
                "dbo.TipoEvento",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                        descripcion = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.id);
            
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
                .ForeignKey("dbo.TipoDocumento", t => t.tipoDoc_id)
                .Index(t => t.tipoDoc_id);
            
            CreateTable(
                "dbo.Matricula",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        anio = c.DateTime(nullable: false, precision: 0),
                        valor = c.Int(nullable: false),
                        fechaVencimiento = c.DateTime(nullable: false, precision: 0),
                        estado = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.MatriculaXSocios",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        idSocio = c.Int(nullable: false),
                        idMatricula = c.Int(nullable: false),
                        fechaPago = c.DateTime(nullable: false, precision: 0),
                        pago = c.Decimal(nullable: false, precision: 18, scale: 2),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.Matricula", t => t.idMatricula)
                .ForeignKey("dbo.Socio", t => t.idSocio)
                .Index(t => t.idSocio)
                .Index(t => t.idMatricula);
            
            CreateTable(
                "dbo.RatingEvento",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        ratingEvento = c.Int(nullable: false),
                        ratingContenido = c.Int(nullable: false),
                        ratingEncargado = c.Int(nullable: false),
                        textoDescripcion = c.String(unicode: false),
                        idEvento = c.Int(nullable: false),
                        idSocio = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.Evento", t => t.idEvento)
                .ForeignKey("dbo.Socio", t => t.idSocio)
                .Index(t => t.idEvento)
                .Index(t => t.idSocio);
            
            CreateTable(
                "dbo.Recordatorios",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        titulo = c.String(unicode: false),
                        descripcion = c.String(unicode: false),
                        fechaRecordatorio = c.DateTime(nullable: false, precision: 0),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.Secretario",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                        apellido = c.String(unicode: false),
                        telefono = c.String(unicode: false),
                        celular = c.String(unicode: false),
                        email = c.String(unicode: false),
                        sexo = c.String(unicode: false),
                        estadoCivil = c.String(unicode: false),
                        idTipoDoc = c.Int(nullable: false),
                        nroDocumento = c.String(unicode: false),
                        fechaNacimiento = c.DateTime(precision: 0),
                        fechaCreacion = c.DateTime(nullable: false, precision: 0),
                        fechaBaja = c.DateTime(precision: 0),
                        estado = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.TipoDocumento", t => t.idTipoDoc)
                .Index(t => t.idTipoDoc);
            
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
                        token = c.String(unicode: false),
                        idEncargado = c.Int(),
                        idSocio = c.Int(),
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
                "dbo.SocioTags",
                c => new
                    {
                        Socio_id = c.Int(nullable: false),
                        Tag_id = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.Socio_id, t.Tag_id })
                .ForeignKey("dbo.Socio", t => t.Socio_id, cascadeDelete: true)
                .ForeignKey("dbo.Tags", t => t.Tag_id, cascadeDelete: true)
                .Index(t => t.Socio_id)
                .Index(t => t.Tag_id);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Secretario", "idTipoDoc", "dbo.TipoDocumento");
            DropForeignKey("dbo.RatingEvento", "idSocio", "dbo.Socio");
            DropForeignKey("dbo.RatingEvento", "idEvento", "dbo.Evento");
            DropForeignKey("dbo.MatriculaXSocios", "idSocio", "dbo.Socio");
            DropForeignKey("dbo.MatriculaXSocios", "idMatricula", "dbo.Matricula");
            DropForeignKey("dbo.Cliente", "tipoDoc_id", "dbo.TipoDocumento");
            DropForeignKey("dbo.Asistencia", "idSocio", "dbo.Socio");
            DropForeignKey("dbo.Asistencia", "idEncargado", "dbo.Encargado");
            DropForeignKey("dbo.Asistencia", "idDetalleEvento", "dbo.DetalleEvento");
            DropForeignKey("dbo.DetalleEvento", "idEncargado", "dbo.Encargado");
            DropForeignKey("dbo.Evento", "idTipoEvento", "dbo.TipoEvento");
            DropForeignKey("dbo.Evento", "idEncargado", "dbo.Encargado");
            DropForeignKey("dbo.Inscripcion", "idSocio", "dbo.Socio");
            DropForeignKey("dbo.Pago", "idInscripcion", "dbo.Inscripcion");
            DropForeignKey("dbo.Pago", "idCuota", "dbo.Cuotas");
            DropForeignKey("dbo.Inscripcion", "idEvento", "dbo.Evento");
            DropForeignKey("dbo.Horarios", "Evento_id", "dbo.Evento");
            DropForeignKey("dbo.DetalleEvento", "idEvento", "dbo.Evento");
            DropForeignKey("dbo.Cuotas", "Evento_id", "dbo.Evento");
            DropForeignKey("dbo.Evento", "idEspacio", "dbo.EspacioComun");
            DropForeignKey("dbo.DetalleEvento", "idEspacio", "dbo.EspacioComun");
            DropForeignKey("dbo.EspacioComun", "idTipoEspacio", "dbo.TipoEspacio");
            DropForeignKey("dbo.Socio", "idTipoDoc", "dbo.TipoDocumento");
            DropForeignKey("dbo.SocioTags", "Tag_id", "dbo.Tags");
            DropForeignKey("dbo.SocioTags", "Socio_id", "dbo.Socio");
            DropForeignKey("dbo.Socio", "idDomicilio", "dbo.Domicilio");
            DropForeignKey("dbo.Socio", "idContacto", "dbo.Contacto");
            DropForeignKey("dbo.TagEspacioComuns", "EspacioComun_id", "dbo.EspacioComun");
            DropForeignKey("dbo.TagEspacioComuns", "Tag_id", "dbo.Tags");
            DropForeignKey("dbo.Encargado", "idTipoDoc", "dbo.TipoDocumento");
            DropForeignKey("dbo.EncargadoTags", "Tag_id", "dbo.Tags");
            DropForeignKey("dbo.EncargadoTags", "Encargado_id", "dbo.Encargado");
            DropForeignKey("dbo.Encargado", "idDomicilio", "dbo.Domicilio");
            DropIndex("dbo.SocioTags", new[] { "Tag_id" });
            DropIndex("dbo.SocioTags", new[] { "Socio_id" });
            DropIndex("dbo.TagEspacioComuns", new[] { "EspacioComun_id" });
            DropIndex("dbo.TagEspacioComuns", new[] { "Tag_id" });
            DropIndex("dbo.EncargadoTags", new[] { "Tag_id" });
            DropIndex("dbo.EncargadoTags", new[] { "Encargado_id" });
            DropIndex("dbo.Secretario", new[] { "idTipoDoc" });
            DropIndex("dbo.RatingEvento", new[] { "idSocio" });
            DropIndex("dbo.RatingEvento", new[] { "idEvento" });
            DropIndex("dbo.MatriculaXSocios", new[] { "idMatricula" });
            DropIndex("dbo.MatriculaXSocios", new[] { "idSocio" });
            DropIndex("dbo.Cliente", new[] { "tipoDoc_id" });
            DropIndex("dbo.Pago", new[] { "idCuota" });
            DropIndex("dbo.Pago", new[] { "idInscripcion" });
            DropIndex("dbo.Inscripcion", new[] { "idSocio" });
            DropIndex("dbo.Inscripcion", new[] { "idEvento" });
            DropIndex("dbo.Horarios", new[] { "Evento_id" });
            DropIndex("dbo.Cuotas", new[] { "Evento_id" });
            DropIndex("dbo.Evento", new[] { "idEncargado" });
            DropIndex("dbo.Evento", new[] { "idEspacio" });
            DropIndex("dbo.Evento", new[] { "idTipoEvento" });
            DropIndex("dbo.Socio", new[] { "idContacto" });
            DropIndex("dbo.Socio", new[] { "idDomicilio" });
            DropIndex("dbo.Socio", new[] { "idTipoDoc" });
            DropIndex("dbo.Encargado", new[] { "idDomicilio" });
            DropIndex("dbo.Encargado", new[] { "idTipoDoc" });
            DropIndex("dbo.EspacioComun", new[] { "idTipoEspacio" });
            DropIndex("dbo.DetalleEvento", new[] { "idEspacio" });
            DropIndex("dbo.DetalleEvento", new[] { "idEvento" });
            DropIndex("dbo.DetalleEvento", new[] { "idEncargado" });
            DropIndex("dbo.Asistencia", new[] { "idDetalleEvento" });
            DropIndex("dbo.Asistencia", new[] { "idEncargado" });
            DropIndex("dbo.Asistencia", new[] { "idSocio" });
            DropTable("dbo.SocioTags");
            DropTable("dbo.TagEspacioComuns");
            DropTable("dbo.EncargadoTags");
            DropTable("dbo.Usuario");
            DropTable("dbo.Secretario");
            DropTable("dbo.Recordatorios");
            DropTable("dbo.RatingEvento");
            DropTable("dbo.MatriculaXSocios");
            DropTable("dbo.Matricula");
            DropTable("dbo.Cliente");
            DropTable("dbo.TipoEvento");
            DropTable("dbo.Pago");
            DropTable("dbo.Inscripcion");
            DropTable("dbo.Horarios");
            DropTable("dbo.Cuotas");
            DropTable("dbo.Evento");
            DropTable("dbo.TipoEspacio");
            DropTable("dbo.Contacto");
            DropTable("dbo.Socio");
            DropTable("dbo.TipoDocumento");
            DropTable("dbo.Domicilio");
            DropTable("dbo.Encargado");
            DropTable("dbo.Tags");
            DropTable("dbo.EspacioComun");
            DropTable("dbo.DetalleEvento");
            DropTable("dbo.Asistencia");
        }
    }
}
