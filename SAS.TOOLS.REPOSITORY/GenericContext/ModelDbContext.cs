using System.Data.Entity;

namespace SAS.TOOLS.REPOSITORY.GenericContext
{
    public partial class ModelDbContext : BaseDbContext
    {
        public ModelDbContext(/*string nameOrConnectionString*/) : base("name=Entities")
        {
            Database.SetInitializer<ModelDbContext>(null);
        }
    }
}
