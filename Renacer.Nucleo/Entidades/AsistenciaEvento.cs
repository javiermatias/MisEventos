using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Nucleo.Entidades
{
    public class AsistenciaEvento
    {
       public Evento evento { get; set; }
       public int porcentajeAsistencia { get; set; } //0 al 100
    }
}
