namespace Renacer.Nucleo.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class initial : DbMigration
    {
        public override void Up()
        {
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
                        sexo = c.String(unicode: false),
                        estadoCivil = c.String(unicode: false),
                        idTipoDoc = c.Int(nullable: false),
                        nroDocumento = c.String(unicode: false),
                        idDomicilio = c.Int(nullable: false),
                        idContacto = c.Int(nullable: false),
                        fechaCreacion = c.DateTime(nullable: false, precision: 0),
                        fechaNacimiento = c.DateTime(precision: 0),
                        fechaBaja = c.DateTime(precision: 0),
                        fechaModificacion = c.DateTime(precision: 0),
                        Evento_id = c.Int(),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.Contacto", t => t.idContacto, cascadeDelete: true)
                .ForeignKey("dbo.Domicilio", t => t.idDomicilio, cascadeDelete: true)
                .ForeignKey("dbo.Evento", t => t.Evento_id)
                .ForeignKey("dbo.TipoDocumento", t => t.idTipoDoc, cascadeDelete: true)
                .Index(t => t.idTipoDoc)
                .Index(t => t.idDomicilio)
                .Index(t => t.idContacto)
                .Index(t => t.Evento_id);
            
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
                "dbo.Asociacion",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        idSocio = c.Int(nullable: false),
                        estado = c.Int(nullable: false),
                        fechaInicio = c.DateTime(nullable: false, precision: 0),
                        fechaFin = c.DateTime(nullable: false, precision: 0),
                        fechaCreacion = c.DateTime(nullable: false, precision: 0),
                        fechaModificacion = c.DateTime(precision: 0),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.Socio", t => t.idSocio, cascadeDelete: true)
                .Index(t => t.idSocio);
            
            CreateTable(
                "dbo.Pago",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        monto = c.Single(nullable: false),
                        nroRecibo = c.Int(nullable: false),
                        idInscripcion = c.Int(nullable: false),
                        idAsociacion = c.Int(nullable: false),
                        fechaCobro = c.DateTime(nullable: false, precision: 0),
                        fechaCreacion = c.DateTime(nullable: false, precision: 0),
                        fechaBaja = c.DateTime(precision: 0),
                        fechaModificacion = c.DateTime(precision: 0),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.Asociacion", t => t.idAsociacion, cascadeDelete: true)
                .ForeignKey("dbo.Inscripcion", t => t.idInscripcion, cascadeDelete: true)
                .Index(t => t.idInscripcion)
                .Index(t => t.idAsociacion);
            
            CreateTable(
                "dbo.Inscripcion",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        idEvento = c.Int(nullable: false),
                        idSocio = c.Int(nullable: false),
                        fechaCreacion = c.DateTime(nullable: false, precision: 0),
                        fechaBaja = c.DateTime(precision: 0),
                        fechaModificacion = c.DateTime(precision: 0),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.Evento", t => t.idEvento, cascadeDelete: true)
                .ForeignKey("dbo.Socio", t => t.idSocio, cascadeDelete: true)
                .Index(t => t.idEvento)
                .Index(t => t.idSocio);
            
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
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.TipoEspacio", t => t.idTipoEspacio, cascadeDelete: true)
                .Index(t => t.idTipoEspacio);
            
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
                "dbo.TipoDocumento",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
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
                "dbo.DetalleEvento",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                        descripcion = c.String(unicode: false),
                        idEncargado = c.Int(nullable: false),
                        idEvento = c.Int(nullable: false),
                        idEspacio = c.Int(nullable: false),
                        idAsistencia = c.Int(nullable: false),
                        estado = c.Int(nullable: false),
                        fechaDesde = c.DateTime(nullable: false, precision: 0),
                        fechaHasta = c.DateTime(nullable: false, precision: 0),
                        fechaCancelacion = c.DateTime(nullable: false, precision: 0),
                        fechaCreacion = c.DateTime(nullable: false, precision: 0),
                        fechaBaja = c.DateTime(precision: 0),
                        fechaModificacion = c.DateTime(precision: 0),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.Asistencia", t => t.idAsistencia, cascadeDelete: true)
                .ForeignKey("dbo.EspacioComun", t => t.idEspacio, cascadeDelete: true)
                .ForeignKey("dbo.Evento", t => t.idEvento, cascadeDelete: true)
                .ForeignKey("dbo.Encargado", t => t.idEncargado, cascadeDelete: true)
                .Index(t => t.idEncargado)
                .Index(t => t.idEvento)
                .Index(t => t.idEspacio)
                .Index(t => t.idAsistencia);
            
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
                "dbo.Permiso",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                        descripcion = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.Rol",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        nombre = c.String(unicode: false),
                        descripcion = c.String(unicode: false),
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
                        token = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.id);
            
            CreateTable(
                "dbo.SocioAsistencias",
                c => new
                    {
                        Socio_id = c.Int(nullable: false),
                        Asistencia_id = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.Socio_id, t.Asistencia_id })
                .ForeignKey("dbo.Socio", t => t.Socio_id, cascadeDelete: true)
                .ForeignKey("dbo.Asistencia", t => t.Asistencia_id, cascadeDelete: true)
                .Index(t => t.Socio_id)
                .Index(t => t.Asistencia_id);
            
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
                "dbo.RolPermisoes",
                c => new
                    {
                        Rol_id = c.Int(nullable: false),
                        Permiso_id = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.Rol_id, t.Permiso_id })
                .ForeignKey("dbo.Rol", t => t.Rol_id, cascadeDelete: true)
                .ForeignKey("dbo.Permiso", t => t.Permiso_id, cascadeDelete: true)
                .Index(t => t.Rol_id)
                .Index(t => t.Permiso_id);
            
            CreateTable(
                "dbo.UsuarioRols",
                c => new
                    {
                        Usuario_id = c.Int(nullable: false),
                        Rol_id = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.Usuario_id, t.Rol_id })
                .ForeignKey("dbo.Usuario", t => t.Usuario_id, cascadeDelete: true)
                .ForeignKey("dbo.Rol", t => t.Rol_id, cascadeDelete: true)
                .Index(t => t.Usuario_id)
                .Index(t => t.Rol_id);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.UsuarioRols", "Rol_id", "dbo.Rol");
            DropForeignKey("dbo.UsuarioRols", "Usuario_id", "dbo.Usuario");
            DropForeignKey("dbo.RolPermisoes", "Permiso_id", "dbo.Permiso");
            DropForeignKey("dbo.RolPermisoes", "Rol_id", "dbo.Rol");
            DropForeignKey("dbo.Cliente", "tipoDoc_id", "dbo.TipoDocumento");
            DropForeignKey("dbo.Socio", "idTipoDoc", "dbo.TipoDocumento");
            DropForeignKey("dbo.Asociacion", "idSocio", "dbo.Socio");
            DropForeignKey("dbo.Inscripcion", "idSocio", "dbo.Socio");
            DropForeignKey("dbo.Pago", "idInscripcion", "dbo.Inscripcion");
            DropForeignKey("dbo.Evento", "idTipoEvento", "dbo.TipoEvento");
            DropForeignKey("dbo.Evento", "idEncargado", "dbo.Encargado");
            DropForeignKey("dbo.Socio", "Evento_id", "dbo.Evento");
            DropForeignKey("dbo.Inscripcion", "idEvento", "dbo.Evento");
            DropForeignKey("dbo.DetalleEvento", "idEncargado", "dbo.Encargado");
            DropForeignKey("dbo.DetalleEvento", "idEvento", "dbo.Evento");
            DropForeignKey("dbo.DetalleEvento", "idEspacio", "dbo.EspacioComun");
            DropForeignKey("dbo.DetalleEvento", "idAsistencia", "dbo.Asistencia");
            DropForeignKey("dbo.Evento", "idEspacio", "dbo.EspacioComun");
            DropForeignKey("dbo.EspacioComun", "idTipoEspacio", "dbo.TipoEspacio");
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
            DropForeignKey("dbo.Pago", "idAsociacion", "dbo.Asociacion");
            DropForeignKey("dbo.SocioAsistencias", "Asistencia_id", "dbo.Asistencia");
            DropForeignKey("dbo.SocioAsistencias", "Socio_id", "dbo.Socio");
            DropForeignKey("dbo.Socio", "idDomicilio", "dbo.Domicilio");
            DropForeignKey("dbo.Socio", "idContacto", "dbo.Contacto");
            DropIndex("dbo.UsuarioRols", new[] { "Rol_id" });
            DropIndex("dbo.UsuarioRols", new[] { "Usuario_id" });
            DropIndex("dbo.RolPermisoes", new[] { "Permiso_id" });
            DropIndex("dbo.RolPermisoes", new[] { "Rol_id" });
            DropIndex("dbo.TagSocios", new[] { "Socio_id" });
            DropIndex("dbo.TagSocios", new[] { "Tag_id" });
            DropIndex("dbo.TagEventoes", new[] { "Evento_id" });
            DropIndex("dbo.TagEventoes", new[] { "Tag_id" });
            DropIndex("dbo.TagEspacioComuns", new[] { "EspacioComun_id" });
            DropIndex("dbo.TagEspacioComuns", new[] { "Tag_id" });
            DropIndex("dbo.EncargadoTags", new[] { "Tag_id" });
            DropIndex("dbo.EncargadoTags", new[] { "Encargado_id" });
            DropIndex("dbo.SocioAsistencias", new[] { "Asistencia_id" });
            DropIndex("dbo.SocioAsistencias", new[] { "Socio_id" });
            DropIndex("dbo.Cliente", new[] { "tipoDoc_id" });
            DropIndex("dbo.DetalleEvento", new[] { "idAsistencia" });
            DropIndex("dbo.DetalleEvento", new[] { "idEspacio" });
            DropIndex("dbo.DetalleEvento", new[] { "idEvento" });
            DropIndex("dbo.DetalleEvento", new[] { "idEncargado" });
            DropIndex("dbo.Encargado", new[] { "idDomicilio" });
            DropIndex("dbo.Encargado", new[] { "idTipoDoc" });
            DropIndex("dbo.EspacioComun", new[] { "idTipoEspacio" });
            DropIndex("dbo.Evento", new[] { "idEncargado" });
            DropIndex("dbo.Evento", new[] { "idTipoEvento" });
            DropIndex("dbo.Evento", new[] { "idEspacio" });
            DropIndex("dbo.Inscripcion", new[] { "idSocio" });
            DropIndex("dbo.Inscripcion", new[] { "idEvento" });
            DropIndex("dbo.Pago", new[] { "idAsociacion" });
            DropIndex("dbo.Pago", new[] { "idInscripcion" });
            DropIndex("dbo.Asociacion", new[] { "idSocio" });
            DropIndex("dbo.Socio", new[] { "Evento_id" });
            DropIndex("dbo.Socio", new[] { "idContacto" });
            DropIndex("dbo.Socio", new[] { "idDomicilio" });
            DropIndex("dbo.Socio", new[] { "idTipoDoc" });
            DropTable("dbo.UsuarioRols");
            DropTable("dbo.RolPermisoes");
            DropTable("dbo.TagSocios");
            DropTable("dbo.TagEventoes");
            DropTable("dbo.TagEspacioComuns");
            DropTable("dbo.EncargadoTags");
            DropTable("dbo.SocioAsistencias");
            DropTable("dbo.Usuario");
            DropTable("dbo.Rol");
            DropTable("dbo.Permiso");
            DropTable("dbo.Cliente");
            DropTable("dbo.TipoEvento");
            DropTable("dbo.DetalleEvento");
            DropTable("dbo.TipoEspacio");
            DropTable("dbo.TipoDocumento");
            DropTable("dbo.Encargado");
            DropTable("dbo.Tags");
            DropTable("dbo.EspacioComun");
            DropTable("dbo.Evento");
            DropTable("dbo.Inscripcion");
            DropTable("dbo.Pago");
            DropTable("dbo.Asociacion");
            DropTable("dbo.Domicilio");
            DropTable("dbo.Contacto");
            DropTable("dbo.Socio");
            DropTable("dbo.Asistencia");
        }
    }
}
