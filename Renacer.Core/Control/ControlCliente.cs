using Renacer.Core.Entity;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Core.Control
{
    public class ControlCliente
    {
        private static ControlCliente controlCliente;

        private ControlCliente() { }

        public static ControlCliente devolverControl()
        {
            if (controlCliente == null)
            {
                controlCliente = new ControlCliente();
            }

            return controlCliente;
        }

        public IEnumerable<Cliente> devolverTodos()
        {
            using (var db = new RenacerCoreDataContext())
            {
                return db.Client.ToList();
            }
        }

        public Cliente devolverPorId(int id)
        {
            using (var db = new RenacerCoreDataContext())
            {
                return db.Client.Where(c => c.id.Equals(id)).FirstOrDefault();
            }
        }

        public void insertar(Cliente cliente)
        {
            using (var db = new RenacerCoreDataContext())
            {
                db.Client.AddOrUpdate(cliente);
            }
        }

        public void actualizar(int id, Cliente cliente)
        {
            using (var db = new RenacerCoreDataContext())
            {
                var clienteAActualizar = db.Client.Where(x => x.id.Equals(id)).FirstOrDefault();
                if (clienteAActualizar != null)
                {
                    clienteAActualizar.nombre = cliente.nombre;
                    db.Client.AddOrUpdate(clienteAActualizar);
                    db.SaveChanges();
                }
            }
        }

        public void eliminar(int id)
        {
            throw new NotImplementedException();
        }
    }
}
