using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Nucleo.Entidades
{
    [Table("Socio")]
    public class Socio
    {
        [Key]
        public int id { get; set; }
        public string nombre { get; set; }
        public string apellido { get; set; }
        public string telefono { get; set; }
        public string celular { get; set; }
        public string email { get; set; }
        public string sexo { get; set; }
        public string estadoCivil { get; set; }
 //       ForeignKey
        public int idTipoDoc { get; set; }
        [ForeignKey("idTipoDoc")]
        public TipoDocumento tipoDoc { get; set; }
        public string nroDocumento { get; set; }

        public int idDomicilio { get; set; }
        [ForeignKey("idDomicilio")]
        public Domicilio domicilio { get; set; }

        public int idContacto { get; set; }
        [ForeignKey("idContacto")]
        public Contacto contacto { get; set; }
                
        public List<Inscripcion> listaInscripciones { get; set; }
        public List<Asistencia> listaAsistencias { get; set; }
        public List<Tag> listaTags { get; set; }

        public DateTime fechaCreacion { get; set; } = DateTime.Now;
        public DateTime? fechaNacimiento { get; set; }
        public DateTime? fechaBaja { get; set; }
        public DateTime? fechaModificacion { get; set; } 

        //Cuando el admin crea la matricula del año, todos los socios pasan a el estado debeMatricula
        //no se puede inscribir el socio a ningun evento hasta que no pague la matricula y pase al estado activo
        //Cuando el socio pague la matricula, se pone en estado activo y se almacena el registro MatriculaXSocio.
        public string estado { get; set; } = "DebeMatricula"; //DebeMatricula Baja, Activo




    }
}
