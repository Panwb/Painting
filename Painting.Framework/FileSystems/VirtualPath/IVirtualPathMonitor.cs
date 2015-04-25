using Painting.Framework.Caching;

namespace Painting.Framework.FileSystems.VirtualPath {
    /// <summary>
    /// Enable monitoring changes over virtual path
    /// </summary>
    public interface IVirtualPathMonitor {
        IVolatileToken WhenPathChanges(string virtualPath);
    }
}