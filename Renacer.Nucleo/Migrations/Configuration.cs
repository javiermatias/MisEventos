namespace Renacer.Nucleo.Migrations
{
    using Entidades;
    using Control;
    using System;
    using System.Collections.Generic;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<Renacer.Nucleo.ModeloRenacer>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
            SetSqlGenerator("MySql.Data.MySqlClient", new myMigrationSQLGenerator());
            //AutomaticMigrationsEnabled = false;
            //SetSqlGenerator("MySql.Data.MySqlClient", new MySql.Data.Entity.MySqlMigrationSqlGenerator());
        }

        protected override void Seed(ModeloRenacer context)
        {

           
        //    TipoDocumento tipoDoc = new TipoDocumento()
        //    { nombre = "DNI" };
        //    TipoDocumento tipoDoc2 = new TipoDocumento()
        //    { nombre = "PASAPORTE" };

        //    context.tipoDocumento.AddOrUpdate(tipoDoc);
        //    context.tipoDocumento.AddOrUpdate(tipoDoc2);

        //    Contacto contacto = new Contacto()
        //    {
        //        nombre = "juan",
        //        apellido = "jose",
        //        telefono = "3432324324",
        //        celular = "242143134",
        //        email = "juan@juan.com",
        //        relacion = "Familiar"
        //    };

        //    Domicilio domicilio = new Domicilio()
        //    {
        //        barrio = "Poeta Lugones",
        //        calle = "Juan del campillo",
        //        nro = "50"
        //    };

        //    Socio socio = new Socio()
        //    {
        //        nombre = "Augusto",
        //        apellido = "galan",
        //        telefono = "3543604130",
        //        email = "juanjose@gmail.com",
        //        domicilio = domicilio,
        //        tipoDoc = tipoDoc,
        //        contacto = contacto
        //    };
        //    Socio socio1 = new Socio()
        //    {
        //        nombre = "Laura",
        //        apellido = "Miguez",
        //        telefono = "3543604130",
        //        email = "laura1Miguez@gmail.com",
        //        domicilio = domicilio,
        //        tipoDoc = tipoDoc,
        //        contacto = contacto
        //    };
        //    Socio socio2 = new Socio()
        //    {
        //        nombre = "Maria",
        //        apellido = "Del Valle",
        //        telefono = "3543604132",
        //        email = "mariadelvalle@gmail.com",
        //        domicilio = domicilio,
        //        tipoDoc = tipoDoc,
        //        contacto = contacto,
        //    };
        //    context.socio.AddOrUpdate(socio);
        //    context.socio.AddOrUpdate(socio1);
        //    context.socio.AddOrUpdate(socio2);

        //    Matricula matricula = new Matricula()
        //    {
        //        anio = DateTime.Parse("29/05/2029"),
        //        valor = 1000,
        //        estado = "Activo"
        //    };

        //    MatriculaXSocio matriculaxsocio = new MatriculaXSocio()
        //    {
        //        matricula = matricula,
        //        socio = socio,
        //        fechaPago = DateTime.Parse("29/05/2019")
        //    };

        //    context.matricula.AddOrUpdate(matricula);
        //    context.matriculaXSocio.AddOrUpdate(matriculaxsocio);

        //    // Carga de usuarios
        //    context.usuario.AddOrUpdate(new Usuario() { nombre = "Administrador", usuario = "admin", rol = "ADMIN", imagen = "assets/img/profile/users/augusto.png", clave = "123456", email = "admin@admin.com" }); // 123456 codificado queda: 8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92
        //    context.usuario.AddOrUpdate(new Usuario() { nombre = "Secretario", usuario = "secre", rol = "SECRETARIO", imagen = "assets/img/profile/users/augusto.png", clave = "123456", email = "secretario@secretario.com" });
        //    context.usuario.AddOrUpdate(new Usuario() { nombre = "Socio", usuario = "socio", rol = "SOCIO", imagen = "assets/img/profile/users/augusto.png", clave = "123456", email = "socio@socio.com" });
        //    context.usuario.AddOrUpdate(new Usuario() { nombre = "Profe", usuario = "encargado", rol = "ENCARGADO", imagen = "assets/img/profile/users/augusto.png", clave = "123456", email = "encargado@encargado.com" });

        //    context.tipoDocumento.AddOrUpdate(new TipoDocumento() { nombre = "Pasaporte" });

        //    context.tipoEvento.AddOrUpdate(new TipoEvento() { nombre = "Curso", descripcion = "---" });
        //    context.tipoEvento.AddOrUpdate(new TipoEvento() { nombre = "Taller", descripcion = "---" });
        //    context.tipoEvento.AddOrUpdate(new TipoEvento() { nombre = "Conferencia", descripcion = "---" });
        //    context.tipoEvento.AddOrUpdate(new TipoEvento() { nombre = "Campa�a social", descripcion = "---" });
        //    context.tipoEvento.AddOrUpdate(new TipoEvento() { nombre = "Festival", descripcion = "---" });

        //    Domicilio D = new Domicilio();
        //    TipoDocumento td = new TipoDocumento() { nombre = "DNI" };
        //    context.encargado.AddOrUpdate(new Encargado() { nombre = "Augusto", apellido = "Galan", domicilio = domicilio, nroDocumento = "2342", tipoDoc = tipoDoc2 });

        //    context.tipoEspacio.AddOrUpdate(new TipoEspacio() { id = 0, nombre = "Aula" });
        //    context.tipoEspacio.AddOrUpdate(new TipoEspacio() { id = 1, nombre = "SUM" });
        //    context.tipoEspacio.AddOrUpdate(new TipoEspacio() { id = 2, nombre = "Patio" });
        //    EspacioComun espacio = new EspacioComun() { nombre = "Aula 205", descripcion = "---", capacidad = 20, idTipoEspacio = 2 };
        //    context.espacioComun.AddOrUpdate(espacio);

        //    context.matricula.AddOrUpdate(new Matricula() { anio = new DateTime(2006, 7, 15), valor = 500, fechaVencimiento = new DateTime(2006, 12, 15), estado = "baja" });
        //    context.matricula.AddOrUpdate(new Matricula() { anio = new DateTime(2007, 7, 15), valor = 500, fechaVencimiento = new DateTime(2007, 12, 15), estado = "baja" });
        //    context.matricula.AddOrUpdate(new Matricula() { anio = new DateTime(2008, 7, 15), valor = 500, fechaVencimiento = new DateTime(2008, 12, 15), estado = "baja" });
        //    context.matricula.AddOrUpdate(new Matricula() { anio = new DateTime(2009, 7, 15), valor = 500, fechaVencimiento = new DateTime(2009, 12, 15), estado = "baja" });
        //    context.matricula.AddOrUpdate(new Matricula() { anio = new DateTime(2010, 7, 15), valor = 500, fechaVencimiento = new DateTime(2010, 12, 15), estado = "baja" });
        //    context.matricula.AddOrUpdate(new Matricula() { anio = new DateTime(2011, 7, 15), valor = 500, fechaVencimiento = new DateTime(2011, 12, 15), estado = "baja" });
        //    context.matricula.AddOrUpdate(new Matricula() { anio = new DateTime(2012, 7, 15), valor = 500, fechaVencimiento = new DateTime(2012, 12, 15), estado = "baja" });
        //    context.matricula.AddOrUpdate(new Matricula() { anio = new DateTime(2013, 7, 15), valor = 500, fechaVencimiento = new DateTime(2013, 12, 15), estado = "baja" });
        //    context.matricula.AddOrUpdate(new Matricula() { anio = new DateTime(2014, 7, 15), valor = 500, fechaVencimiento = new DateTime(2014, 12, 15), estado = "baja" });
        //    context.matricula.AddOrUpdate(new Matricula() { anio = new DateTime(2015, 7, 15), valor = 500, fechaVencimiento = new DateTime(2015, 12, 15), estado = "baja" });
        //    context.matricula.AddOrUpdate(new Matricula() { anio = new DateTime(2016, 7, 15), valor = 500, fechaVencimiento = new DateTime(2016, 12, 15), estado = "baja" });
        //    context.matricula.AddOrUpdate(new Matricula() { anio = new DateTime(2017, 7, 15), valor = 500, fechaVencimiento = new DateTime(2017, 12, 15), estado = "baja" });
        //    context.matricula.AddOrUpdate(new Matricula() { anio = new DateTime(2018, 7, 15), valor = 500, fechaVencimiento = new DateTime(2018, 12, 15), estado = "baja" });
        //    context.matricula.AddOrUpdate(new Matricula() { anio = new DateTime(2019, 7, 15), valor = 500, fechaVencimiento = new DateTime(2019, 12, 15), estado = "alta" });
        }
    }
}
