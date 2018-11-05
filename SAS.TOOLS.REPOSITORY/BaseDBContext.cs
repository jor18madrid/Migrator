using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SAS.TOOLS.REPOSITORY
{
    public abstract class BaseDbContext : DbContext
    {
        public BaseDbContext(string nameOrConnectionString) : base(nameOrConnectionString)
        {

        }
    }
}
