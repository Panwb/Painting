using System;
namespace Painting.Data
{
    public interface IUnitOfWork : IDisposable
    {
        void CommitTransaction();
        void StartTransaction();
    }
}
