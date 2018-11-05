using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace SAS.TOOLS.REPOSITORY.ServiceContract
{
    public interface IReporsitory<T> where T : class
    {
        IQueryable<T> Entities { get; }
        IQueryable<T> GetList(Expression<Func<T, bool>> predicate);
        void Remove(T entity);
        void Add(T entity);
    }
}
