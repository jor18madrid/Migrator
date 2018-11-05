using SAS.TOOLS.REPOSITORY.ServiceContract;
using System;
using System.Data.Entity;

namespace SAS.TOOLS.REPOSITORY
{
    public class Disposable : IDisposable
    {
        private bool isDisposed;

        ~Disposable()
        {
            Dispose(false);
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
        private void Dispose(bool disposing)
        {
            if (!isDisposed && disposing)
            {
                DisposeCore();
            }

            isDisposed = true;
        }

        protected virtual void DisposeCore()
        {
        }
    }

    public class DBFactory<D> : Disposable, IDbFactory<D> where D : DbContext, new()
    {
        D dbContext;

        public D Init()
        {
            return dbContext ?? (dbContext = new D());
        }
        protected override void DisposeCore()
        {
            if (dbContext != null)
                dbContext.Dispose();
        }
    }
}
