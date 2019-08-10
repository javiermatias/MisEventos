using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Nucleo.Entidades
{
    public class Horario
    {
        public int id { get; set; }
        public string dia { get; set; }
        public DayOfWeek dayOfWeek { get; set; }
        public string horaDesde { get; set; }

        public string horaHasta { get; set; }

        //public int espacio { get; set; } // va indicar el aula a la que esta asignada

    }
}
