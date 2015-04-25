using Painting.Data;
using Painting.Model;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;
using System.Linq;
using System.Reflection;
using Painting.Framework;


namespace Painting.Data
{
    public class EFContext : DbContext, IDbContext
    {
        private readonly IBuildManager _buildManager;
        public EFContext(string connString, IBuildManager buildManager)
            : base(connString)
        {
            //Database.SetInitializer<EFContext>(new DBInitializer());
            _buildManager = buildManager;
        }

        public new IDbSet<TEntity> Set<TEntity>() where TEntity : class
        {
            return base.Set<TEntity>();
            
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
        }
    }
}