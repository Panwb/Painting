using System;
using System.Linq;
using Autofac;
using Microsoft.Practices.Unity;
using Painting.Data;
using Painting.Framework;

namespace Painting.Data
{
    public class DataModule : Module
    {
        private string connStr;

        public DataModule(string connString)
        {
            this.connStr = connString;
        }

        protected override void Load(ContainerBuilder builder)
        {
            var buildManager = new BuildManagerWrapper();
            builder.Register(c => new EFContext(this.connStr, buildManager)).As<IDbContext>().InstancePerRequest();
            builder.RegisterType<SqlRepository>().As<IRepository>().InstancePerRequest();

            RegisterRepositories(buildManager, builder);

            builder.RegisterType<UnitOfWork>().As<IUnitOfWork>().InstancePerRequest();

            base.Load(builder);
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
