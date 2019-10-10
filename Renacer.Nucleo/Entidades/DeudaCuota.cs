using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Nucleo.Entidades
{
    public class DeudaCuota
    {
        public int idCuota { get; set; }
        public string nombreCuota { get; set; }
        public List<Socio> listaSocios { get; set; }
    }
}
