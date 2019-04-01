namespace Renacer.Nucleo.Migrations
{
    using Entidades;
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
            //context.Database.ExecuteSqlCommand("TRUNCATE TABLE Rol");
            //context.Database.ExecuteSqlCommand("TRUNCATE TABLE usuarios");
            //context.Database.ExecuteSqlCommand("TRUNCATE TABLE usuariorols");
            //context.Database.ExecuteSqlCommand("TRUNCATE TABLE persona");
            //context.Database.ExecuteSqlCommand("TRUNCATE TABLE TipoDocumento");
            // context.usuario.RemoveRange(context.usuario.ToList());
            // TODO: hacer carga de permisos

            // Carga de roles
            Rol admin = new Rol() { nombre = "Administrador", descripcion = "Administrador del sistema" };
            Rol secre = new Rol() { nombre = "Secretario", descripcion = "Encargado de Recepción" };
            Rol encargado = new Rol() { nombre = "Encargado", descripcion = "Encargado de evento" };
            Rol socioRol = new Rol() { nombre = "Socio", descripcion = "Interesado en asistir a un evento" };

            TipoDocumento _tipoDoc = new TipoDocumento() { nombre = "dni" };

            Persona _personaAdmin = new Persona() { nombre = "Javier", apellido = "Jimenez", tipoDoc = _tipoDoc, nroDocumento = "32" };
            Persona _personaSecretaria = new Persona() { nombre = "Luciana", apellido = "Quinteros", tipoDoc = _tipoDoc, nroDocumento = "33" };
            Persona _personaEncargado = new Persona() { nombre = "Lucas", apellido = "Gonzalez", tipoDoc = _tipoDoc, nroDocumento = "34" };
            Persona _personaSocia = new Persona() { nombre = "Augusto", apellido = "Galán", tipoDoc = _tipoDoc, nroDocumento = "35" };

            List<Rol> rolesAdmin = new List<Rol>();
            rolesAdmin.Add(admin);
            rolesAdmin.Add(secre);
            rolesAdmin.Add(encargado);
            List<Rol> rolesSecre = new List<Rol>();
            rolesSecre.Add(secre);
            rolesSecre.Add(socioRol);
            List<Rol> rolesEncar = new List<Rol>();
            rolesSecre.Add(encargado);
            List<Rol> rolesSocio = new List<Rol>();
            rolesSocio.Add(socioRol);

            context.rol.AddOrUpdate(admin);
            context.rol.AddOrUpdate(secre);
            context.rol.AddOrUpdate(encargado);
            context.rol.AddOrUpdate(socioRol);

            // Carga de usuarios
            context.usuario.AddOrUpdate(new Usuario() { nombre = "Administrador", usuario = "admin", rol = "Administrador", imagen = "assets/img/profile/users/augusto.png", clave = "123456", email = "admin@admin.com", roles = rolesAdmin, persona = _personaAdmin }); // 123456 codificado queda: 8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92
            context.usuario.AddOrUpdate(new Usuario() { nombre = "Secretario", usuario = "secre", rol = "Secre", imagen = "assets/img/profile/users/augusto.png", clave = "123456", email = "secretario@secretario.com", roles = rolesSecre, persona = _personaSecretaria });
            context.usuario.AddOrUpdate(new Usuario() { nombre = "Socio", usuario = "socio", rol = "Socio", imagen = "assets/img/profile/users/augusto.png", clave = "123456", email = "socio@socio.com", roles = rolesSocio, persona = _personaSocia });
            context.usuario.AddOrUpdate(new Usuario() { nombre = "Profe", usuario = "encargado", rol = "Encargado", imagen = "assets/img/profile/users/augusto.png", clave = "123456", email = "encargado@encargado.com", roles = rolesEncar, persona = _personaEncargado });

            context.tipoDocumento.AddOrUpdate(new TipoDocumento() { nombre = "Pasaporte" });

            context.tipoEvento.AddOrUpdate(new TipoEvento() { nombre = "Curso", descripcion = "---" });
            context.tipoEvento.AddOrUpdate(new TipoEvento() { nombre = "Taller", descripcion = "---" });
            context.tipoEvento.AddOrUpdate(new TipoEvento() { nombre = "Conferencia", descripcion = "---" });
            context.tipoEvento.AddOrUpdate(new TipoEvento() { nombre = "Campaña social", descripcion = "---" });
            context.tipoEvento.AddOrUpdate(new TipoEvento() { nombre = "Festival", descripcion = "---" });

            Domicilio D = new Domicilio();
            TipoDocumento td = new TipoDocumento() { nombre = "DNI" };
            context.encargado.AddOrUpdate(new Encargado() { nombre = "Augusto", apellido = "Galan", domicilio = D, nroDocumento = "2342", tipoDoc = td });

            context.tipoEspacio.AddOrUpdate(new TipoEspacio() { id = 0, nombre = "Aula" });
            context.tipoEspacio.AddOrUpdate(new TipoEspacio() { id = 1, nombre = "SUM" });
            context.tipoEspacio.AddOrUpdate(new TipoEspacio() { id = 2, nombre = "Patio" });
            EspacioComun espacio = new EspacioComun() { nombre = "Aula 205", descripcion = "---", capacidad = 20, idTipoEspacio = 2 };
            context.espacioComun.AddOrUpdate(espacio);

            Socio socio = new Socio() { nombre = "Juan", apellido = "Perez", fechaCreacion = DateTime.Now, email = "" };


        }
    }
}
