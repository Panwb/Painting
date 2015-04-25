using System.Web.Hosting;

namespace Painting.Framework.FileSystems.VirtualPath {
    public interface ICustomVirtualPathProvider {
        VirtualPathProvider Instance { get; }
    }
}