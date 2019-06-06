using Renacer.Nucleo.Control;
using Renacer.Nucleo.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Nucleo
{
    public class Program
    {
        static void Main(string[] args)
        {

           List<Cliente> clientes = ControlCliente.devolverCliente().devolverTodos();

            using (var db = new ModeloRenacer())
            {
                List<MatriculaXSocio> matriculas = db.matriculaXSocio.Include("socio").Include("matricula").ToList();


                

            }
           Console.ReadLine();
        }
    }
}
