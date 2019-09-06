using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Nucleo.Entidades
{
    public class CambioContrasenia
    {
        //  public contraseniaActual: string;
        //public nuevaContrasenia: string;
        //public repiteContrasenia?: string;
        public string usuario { get; set; }
        public string contraseniaActual { get; set; }
        public string nuevaContrasenia { get; set; }

        public string repiteContrasenia { get; set; }
    }
}
