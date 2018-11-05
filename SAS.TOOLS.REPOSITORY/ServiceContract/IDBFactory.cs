using System.Data.Entity;

namespace SAS.TOOLS.REPOSITORY.ServiceContract
{
    public interface IDbFactory<D> where D : DbContext
    {
        D Init();
    }

}
