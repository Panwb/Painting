using System.Linq;
using Autofac;
using Painting.Data;

namespace Painting.Framework
{
    public class AutofacRegister : Module
    {
        protected override void Load(ContainerBuilder builder)
        {
            var buildManager = new BuildManagerWrapper();

            //Repository
            RegisterDBContext(buildManager, builder);
            builder.RegisterType<SqlRepository>().As<IRepository>().InstancePerRequest();
            RegisterRepositories(buildManager, builder);
            builder.RegisterType<UnitOfWork>().As<IUnitOfWork>().InstancePerRequest();

            //IBuildManager
            builder.RegisterType<BuildManagerWrapper>().As<IBuildManager>().InstancePerRequest();

            base.Load(builder);
        }

        private void RegisterDBContext(IBuildManager buildManager, ContainerBuilder builder)
        {
            var dbContext = typeof(IDbContext);
            var dbContextType = buildManager.ConcreteTypes.FirstOrDefault(dbContext.IsAssignableFrom);
            if (dbContextType != null)
            {
                builder.RegisterType(dbContextType).As<IDbContext>().InstancePerRequest();
            }
        }

        private void RegisterRepositories(IBuildManager buildManager, ContainerBuilder builder)
        {
            var repositoryType = typeof (IRepository);

            var repositoryContractTypes =
                buildManager.PublicTypes.Where(
                    type =>
                        (type != null) && type.IsInterface &&
                        type.GetInterfaces().Any(interfaceType => interfaceType == repositoryType)).ToList();

            foreach (
                var repositoryImplementationType in
                    buildManager.ConcreteTypes.Where(
                        implementationType =>
                            repositoryContractTypes.Any(
                                contractType => contractType.IsAssignableFrom(implementationType))))
            {
                foreach (
                    var repositoryInterfaceType in
                        repositoryImplementationType.GetInterfaces()
                            .Where(i => repositoryType.IsAssignableFrom(i) && i != repositoryType))
                {
                    builder.RegisterType(repositoryImplementationType)
                        .As(repositoryInterfaceType)
                        .InstancePerDependency();
                }
            }
        }
    }
}
