using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Renacer.Nucleo;
using System.Web.Http.Results;
using Renacer.Nucleo.Entidades;

namespace Renacer.WebAPI.Prueba
{
    [TestClass]
    public class ApiClienteControllerTest
    {
        [TestMethod]
        public void ApiClienteControllerTestPost()
        {
            var control = new WebAPI.Controllers.ClienteController();

            Cliente cliente = new Cliente();
            cliente.nombre = "ZZZZZ";
            cliente.apellido = "XXXXX";

            var obj = control.Post(cliente);
            
            OkNegotiatedContentResult<string> conNegResult = obj as OkNegotiatedContentResult<string>;

            Assert.AreNotEqual(0, cliente.id);
        }
    }
}
