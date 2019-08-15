using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Nucleo.Entidades
{
    [Table("Secretario")]
    public class Secretario
    {
        [Key]
        public int id { get; set; }
        public string nombre { get; set; }
        public string apellido { get; set; }
        public string telefono { get; set; }
        public string celular { get; set; }
        public string email { get; set; }
        public string sexo { get; set; } //Masculino,Femenino,N/C
        public string estadoCivil { get; set; } //Soltero,Casado,Viudo,Divorciado
        public int idTipoDoc { get; set; }
        [ForeignKey("idTipoDoc")]
        public TipoDocumento tipoDoc { get; set; }
        public string nroDocumento { get; set; }
       
        public DateTime? fechaNacimiento { get; set; }
        public DateTime fechaCreacion { get; set; } = DateTime.Now;

        public DateTime? fechaBaja { get; set; }
        //public DateTime? fechaModificacion { get; set; } 

        public string estado { get; set; } = "Activo"; //Baja, Activo
    }
}
