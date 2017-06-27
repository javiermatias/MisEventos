using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Nucleo.Entidades
{
    public class UsuarioException : Exception
    {
        public List<string> errores { get; }

        public UsuarioException(string mensaje) : base(mensaje) { }
        public UsuarioException(List<string> mensajes) : base()
        {
            this.errores = mensajes;
        }
    }
}
