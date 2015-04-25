using Painting.Model;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;
using System.Linq;
using Painting.Framework;


namespace Painting.Data
{
    public class PaintingContext : DbContext, IDbContext
    {
        private readonly IBuildManager _buildManager;
        public PaintingContext(IBuildManager buildManager)
        {
            _buildManager = buildManager;
        }

        public new IDbSet<TEntity> Set<TEntity>() where TEntity : class
        {
            return base.Set<TEntity>();
            
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();

            var methodInfo = typeof (DbModelBuilder).GetMethod("Entity");
            var modelType = typeof(IModel<>);
            foreach (var entityType in _buildManager.ConcreteTypes.Where(type => (type != null) && type.GetInterfaces().Any(i => i.IsGenericType && i.GetGenericTypeDefinition() == modelType)))
            {
                methodInfo.MakeGenericMethod(entityType).Invoke(modelBuilder, null);
            }

            base.OnModelCreating(modelBuilder);
        }
    }
}