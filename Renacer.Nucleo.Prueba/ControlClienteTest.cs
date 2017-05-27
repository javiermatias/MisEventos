using Microsoft.VisualStudio.TestTools.UnitTesting;
using Renacer.Nucleo.Control;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Nucleo.Prueba
{
    [TestClass]
    public class ControlClienteTest
    {
        [TestMethod]
        public void insertarClienteTest()
        {
            Cliente cliente = new Cliente();
            cliente.nombre = "ZZZZZ";
            cliente.apellido = "XXXXX";

            ControlCliente.devolverCliente().grabar(cliente);
            Assert.AreNotEqual(0, cliente.id);

            Cliente clienteDevuelto = ControlCliente.devolverCliente().devolver(cliente.id);
            Assert.IsNotNull(clienteDevuelto);
            Assert.AreEqual("ZZZZZ", cliente.nombre);
            Assert.AreEqual("XXXXX", cliente.apellido);

            cliente.nombre = "AAAAA";
            ControlCliente.devolverCliente().grabar(cliente);
            clienteDevuelto = ControlCliente.devolverCliente().devolver(cliente.id);
            Assert.AreEqual("AAAAA", cliente.nombre);
        }
    }
}
