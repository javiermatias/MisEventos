using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Nucleo.Entidades
{
    [Table("Evento")]
    public class Evento
    {
        [Key]
        public int id { get; set; }

        public string nombre { get; set; }
        public string descripcion { get; set; }

        public int idTipoEvento { get; set; }
        [ForeignKey("idTipoEvento")]
        public TipoEvento tipoEvento { get; set; }

        public int idEspacio { get; set; }
        [ForeignKey("idEspacio")]
        public EspacioComun espacio { get; set; }

        public int idEncargado { get; set; }
        [ForeignKey("idEncargado")]
        public Encargado responsable { get; set; }
        public int cupoMinimo { get; set; }
        public int cupoMaximo { get; set; }
        public bool gratuito { get; set; } //si es true es gratuito
        public float monto { get; set; }
        public int cantidadCuota { get; set; }
        public List<Cuota> listaCuotas { get; set; }
        public DateTime fechaDesde { get; set; }
        public DateTime fechaHasta { get; set; }
        public DateTime fechaDesdeInscripcion { get; set; }
        public DateTime fechaHastaInscripcion { get; set; }

        public List<Horario> listaHorarios { get; set; }
        public string estado { get; set; } = "Nuevo"; //Nuevo,Cancelado,Progreso,Finalizado


        public List<DetalleEvento> listaDetalleEvento { get; set; }

       // public List<Socio> listaSocios { get; set; }
        public List<Inscripcion> listaInscripciones { get; set; }

         public DateTime fechaCreacion { get; set; }

         public DateTime? fechaBaja { get; set; }
         //public DateTime? fechaModificacion { get; set; }

        // public List<Tag> listaTags { get; set; }
    }

    public enum EstadoEvento { Nuevo,Cancelado,Progreso,Finalizado}
}
