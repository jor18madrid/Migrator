using SAS.TOOLS.REPOSITORY.ServiceContract;
using System;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Linq.Expressions;

namespace SAS.TOOLS.REPOSITORY
{
    public class RepositoryBase<D, T> : IReporsitory<T> where T : class where D : DbContext
    {
        private readonly D _dbContext;
        private IDbSet<T> _dbSet => _dbContext.Set<T>();
        public IQueryable<T> Entities => _dbSet;
     
        public RepositoryBase(D dbContext)
        {
            _dbContext = dbContext;
        }
        public void Remove(T entity)
        {
            _dbSet.Remove(entity);
        }
        public void Add(T entity)
        {
            _dbSet.Add(entity);
        }

        public IQueryable<T> GetList(Expression<Func<T, bool>> predicate = null)
        {
            return _dbSet.Where(predicate);
        }

        public IQueryable<T> GetListJoin(Expression<Func<T, bool>> predicate = null)
        {
            return _dbSet.Where(predicate);
        }
    }
}
