using System.IO;
using System.Web.Compilation;
using Painting.Framework;
using Painting.Framework.Environment;
using Painting.Framework.FileSystems.VirtualPath;
using Microsoft.Practices.ServiceLocation;

namespace Painting.Framework
{
    using System;
    using System.Collections.Generic;
    using System.Diagnostics;
    using System.Linq;
    using System.Reflection;

    /// <summary>
    /// Custom implemention for the interface IBuildManager.
    /// </summary>
    public class BuildManagerEx : IBuildManager
    {
        private static readonly IBuildManager instance = new BuildManagerEx();
        private IEnumerable<Assembly> referencedAssemblies;
        private IEnumerable<Type> publicTypes;
        private IEnumerable<Type> concreteTypes;
        private IVirtualPathProvider _virtualPathProvider;
        private IAssemblyLoader _assemblyLoader;
        public IVirtualPathProvider VirtualPathProvider 
        {
            get
            {
                if (_virtualPathProvider == null)
                {
                    _virtualPathProvider = ServiceLocator.Current.GetInstance<IVirtualPathProvider>();
                }
                return _virtualPathProvider;
            }
            set { _virtualPathProvider = value; } 
        }
        public IAssemblyLoader AssemblyLoader
        {
            get
            {
                if (_assemblyLoader == null)
                {
                    _assemblyLoader = ServiceLocator.Current.GetInstance<IAssemblyLoader>();
                }
                return _assemblyLoader;
            }
            set { _assemblyLoader = value; }
        }
       public BuildManagerEx()
       {
           
       }
        public BuildManagerEx(
            IVirtualPathProvider virtualPathProvider,
            IAssemblyLoader assemblyLoader)
        {
            VirtualPathProvider = virtualPathProvider;
            AssemblyLoader = assemblyLoader;
        }


        /// <summary>
        /// Gets the singleton instance.
        /// </summary>
        /// <value>The current.</value>
        public static IBuildManager Current
        {
            [DebuggerStepThrough]
            get
            {
                return instance;
            }
        }

        /// <summary>
        /// Gets the assemblies.
        /// </summary>
        /// <value>The assemblies.</value>
        public virtual IEnumerable<Assembly> Assemblies
        {
            get
            {
                if(System.Web.HttpContext.Current != null)
                {
                    return referencedAssemblies ??
                           (referencedAssemblies =
                            BuildManager.GetReferencedAssemblies().Cast<Assembly>().Where(
                                assembly => !assembly.GlobalAssemblyCache).ToList());
                }
                var assemblies = new List<Assembly>();
                var assemly = Assembly.GetExecutingAssembly();
                //Assembly.GetEntryAssembly().GetReferencedAssemblies()
                AppDomain.CurrentDomain.GetAssemblies()
                    .Each(assemblies.Add);
                //assemblies.Add(Assembly.GetEntryAssembly());
                return referencedAssemblies ??
                       (referencedAssemblies =
                        assemblies.Where(assembly => !assembly.GlobalAssemblyCache).ToList());
            }
        }

        /// <summary>
        /// Gets the available public types of <see cref="Assemblies"/>.
        /// </summary>
        /// <value>The concrete types.</value>
        public IEnumerable<Type> PublicTypes
        {
            get
            {
                return publicTypes ?? (publicTypes = Assemblies.PublicTypes().ToList());
            }
        }

        /// <summary>
        /// Gets the available concrete types of <see cref="Assemblies"/>.
        /// </summary>
        /// <value>The concrete types.</value>
        public IEnumerable<Type> ConcreteTypes
        {
            [DebuggerStepThrough]
            get
            {
                return concreteTypes ?? (concreteTypes = Assemblies.ConcreteTypes().ToList());
            }
        }

        public bool FileExists(string virtualPath)
        {
            return BuildManager.GetObjectFactory(virtualPath, false) != null;
        }

        public Type GetCompiledType(string virtualPath)
        {
            return BuildManager.GetCompiledType(virtualPath);
        }

        public IEnumerable<Assembly> GetReferencedAssemblies()
        {
            return BuildManager.GetReferencedAssemblies().OfType<Assembly>();
        }

        public bool HasReferencedAssembly(string name)
        {
            var assemblyPath = VirtualPathProvider.Combine("~/bin", name + ".dll");
            return VirtualPathProvider.FileExists(assemblyPath);
        }

        public Assembly GetReferencedAssembly(string name)
        {
            if (!HasReferencedAssembly(name))
                return null;

            return AssemblyLoader.Load(name);
        }

        public Assembly GetCompiledAssembly(string virtualPath)
        {
            try
            {
                return BuildManager.GetCompiledAssembly(virtualPath);
            }
            catch
            {
                return null;
            }

        }
        public  void LoadAllBinDirectoryAssemblies()
        {
            var binPath = AppDomain.CurrentDomain.BaseDirectory;
            var allDlls = Directory.GetFiles(binPath, "*.dll", SearchOption.TopDirectoryOnly);
            foreach (var dll in allDlls)
            {
                try
                {
                    Assembly.LoadFile(dll);
                }
                catch (Exception)
                {
                    //System.Diagnostics.Debug.Write("Load Assembly failed" + loadEx.Message);
                }
            }
        }
    }
}