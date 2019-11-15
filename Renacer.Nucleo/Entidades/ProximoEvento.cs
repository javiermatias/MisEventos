using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Nucleo.Entidades
{
    public class ProximoEvento
    {

        public int id { get; set; }
        public string nombre { get; set; }
        public string descripcion { get; set; }
        public int cupoMinimo { get; set; }
        public int cupoMaximo { get; set; }
        public int cantidadInscriptos { get; set; }
        public DateTime fechaDesde { get; set; }
        public DateTime fechaHasta { get; set; }
        public DateTime fechaDesdeInscripcion { get; set; }
        public DateTime fechaHastaInscripcion { get; set; }
    }
}
