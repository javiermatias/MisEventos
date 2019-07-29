namespace Renacer.Nucleo
{
    using Entidades;
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Security.Principal;

    [Table("Usuario")]
    public partial class Usuario : System.Security.Principal.IPrincipal
    {
        //public Usuario()
        //{
        //    this.roles = new HashSet<Rol>();
        //}

        [Key]
        public int id { get; set; }
        public string nombre { get; set; }
        public string usuario { get; set; }
        public string clave { get; set; }
        public string imagen { get; set; }
        public string rol { get; set; } //ADMIN, SECRETARIO, ENCARGADO, SOCIO
        public string email { get; set; }
        public DateTime fechaCreacion { get; set; }
        public DateTime fechaBaja { get; set; }
       // public DateTime fechaUltimoAcceso { get; set; }
       //public DateTime fechaModificacion { get; set; }
        //public string idFacebook { get; set; }
        //public string idGoogle { get; set; }
        public string token { get; set; }        
       // public virtual ICollection<Rol> roles { get; set; }
        //public int? idPersona { get; set; }
        //[ForeignKey("idPersona")]
        //public Persona persona { get; set; }
        //public int contador { get; set; }
        public int? idEncargado { get; set; }
        public int? idSocio { get; set; }

        [NotMapped]
        public IIdentity Identity
        {
            get
            {
               return  new UserIdentity() { Name = this.usuario };
            }
        }

        public bool IsInRole(string role)
        {
            return this.rol == role;
        }
       
    }

    public class UserIdentity : IIdentity
    {
        public string AuthenticationType
        {
            get
            {
                return "basic";
            }
        }

        public bool IsAuthenticated
        {
            get
            {
                return Name != "";
            }
        }

        public string Name {get; set;}
    }


}
