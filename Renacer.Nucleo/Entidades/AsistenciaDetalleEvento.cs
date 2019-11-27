using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Nucleo.Entidades
{
    public class AsistenciaDetalleEvento
    {

        public Socio socio { get; set; }
        public bool asistio { get; set; } // si asistio o no al evento

        public int porcentajeAsistencia { get; set; } //0 al 100
    }
}
