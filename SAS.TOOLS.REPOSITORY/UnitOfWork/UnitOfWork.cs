using SAS.TOOLS.REPOSITORY.ServiceContract;
using SAS.TOOLS.REPOSITORY.UnitOfWork;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SAS.TOOLS.REPOSITORY.UnitOfWork
{
    public class UnitOfWork<D, T> : IUnitofWork<D, T> where D : DbContext where T : class
    {
        private readonly D _dbContext;
        #region Repositories
        public IReporsitory<T> Repository => new RepositoryBase<D, T>(_dbContext);
        #endregion
        public UnitOfWork(D dbContext)
        {
            _dbContext = dbContext;
        }
        public void Commit()
        {
            _dbContext.SaveChanges();
        }
        public void Dispose()
        {
            _dbContext.Dispose();
        }
        public void RejectChanges()
        {
            foreach (var entry in _dbContext.ChangeTracker.Entries()
                  .Where(e => e.State != EntityState.Unchanged))
            {
                switch (entry.State)
                {
                    case EntityState.Added:
                        entry.State = EntityState.Detached;
                        break;
                    case EntityState.Modified:
                    case EntityState.Deleted:
                        entry.Reload();
                        break;
                }
            }
        }
    }
}
