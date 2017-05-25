using Renacer.Core.Entity;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Core
{
    public class RenacerCoreDataContext : DbContext
    {
        public RenacerCoreDataContext() : base("DefaultConnection")
        {

        }

        public RenacerCoreDataContext(String name) : base(name)
        {

        }

        public DbSet<Cliente> Client { get; set; }
    }
}
