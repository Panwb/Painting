using Painting.Model;
using System;
namespace Painting.Data
{
    public interface IRepository : IDisposable
    {
        void Delete<TEntity>(TEntity entity) where TEntity : class;
        System.Linq.IQueryable<TEntity> GetAll<TEntity>() where TEntity : class;
        TEntity GetById<TEntity>(int id) where TEntity : IModel<int>;
        void Insert<TEntity>(TEntity entity) where TEntity : class;
        void SaveChanges();
    }
}
