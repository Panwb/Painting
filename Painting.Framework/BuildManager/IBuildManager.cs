namespace Painting.Framework
{
    using System;
    using System.Collections.Generic;
    using System.Reflection;

    /// <summary>
    /// Represents an interface which provides access to all the referenced assemblies.
    /// </summary>
    public interface IBuildManager
    {
        /// <summary>
        /// Gets the available assemblies.
        /// </summary>
        /// <value>The assemblies.</value>
        IEnumerable<Assembly> Assemblies
        {
            get;
        }

        /// <summary>
        /// Gets the available public types of <see cref="Assemblies"/>.
        /// </summary>
        /// <value>The concrete types.</value>
        IEnumerable<Type> PublicTypes
        {
            get;
        }

        /// <summary>
        /// Gets the available concrete types of <see cref="Assemblies"/>.
        /// </summary>
        /// <value>The concrete types.</value>
        IEnumerable<Type> ConcreteTypes
        {
            get;
        }
        bool FileExists(string virtualPath);

        Type GetCompiledType(string virtualPath);

        IEnumerable<Assembly> GetReferencedAssemblies();

        Assembly GetCompiledAssembly(string virtualPath);
    }
}