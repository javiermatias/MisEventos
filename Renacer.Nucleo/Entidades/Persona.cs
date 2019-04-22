using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Nucleo.Entidades
{

    [Table("Persona")]
    public class Persona
    {
        public Persona()
        {
            this.listaTags = new HashSet<Tag>();

        }

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
        public int? idTipoDoc { get; set; }
        [ForeignKey("idTipoDoc")]
        public TipoDocumento tipoDoc { get; set; }
        public string nroDocumento { get; set; }

        public int? idDomicilio { get; set; }
        [ForeignKey("idDomicilio")]
        public Domicilio domicilio { get; set; }

        public int? idContacto { get; set; }
        [ForeignKey("idContacto")]
        public Contacto contacto { get; set; }

        public DateTime fechaCreacion { get; set; }
        public DateTime? fechaNacimiento { get; set; }
        public DateTime? fechaBaja { get; set; }
        public DateTime? fechaModificacion { get; set; }

        public List<Asociacion> listaAsociaciones { get; set; }
        public List<Inscripcion> listaInscripciones { get; set; }
        public List<Asistencia> listaAsistencias { get; set; }
     
        public virtual ICollection<Tag> listaTags { get; set; }

        public string rol { get; set; }



    }
}
