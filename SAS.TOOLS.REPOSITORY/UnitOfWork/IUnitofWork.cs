using SAS.TOOLS.REPOSITORY.ServiceContract;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SAS.TOOLS.REPOSITORY.UnitOfWork
{
    public interface IUnitofWork<D, T> where D : DbContext where T : class
    {
        IReporsitory<T> Repository { get; }

        /// <summary>
        /// Commits all changes
        /// </summary>
        void Commit();
        /// <summary>
        /// Discards all changes that has not been commited
        /// </summary>
        void RejectChanges();
        void Dispose();
    }
}
