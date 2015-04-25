using System.Collections.Generic;
using System.Reflection;

namespace Painting.Framework.Environment {
    public interface IFrameworkAssemblies : IDependency {
        IEnumerable<AssemblyName> GetFrameworkAssemblies();
    }

    public class DefaultFrameworkAssemblies : IFrameworkAssemblies {
        public IEnumerable<AssemblyName> GetFrameworkAssemblies() {
            return typeof (IDependency).Assembly.GetReferencedAssemblies();
        }
    }
}
