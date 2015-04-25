using System.Collections.Generic;
using Painting.Framework.Environment.Extensions.Models;

namespace Painting.Framework.Environment.Extensions.Folders {
    public interface IExtensionFolders {
        IEnumerable<ExtensionDescriptor> AvailableExtensions();
    }
}