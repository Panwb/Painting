using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Hosting;
using Painting.Framework.Logging;

namespace Painting.Framework.FileSystems.VirtualPath {
    public class CommandVirtualPathProvider : DefaultVirtualPathProvider {
        public CommandVirtualPathProvider()
        {
            Logger = NullLogger.Instance;
        }

        public ILogger Logger { get; set; }
        public override string MapPath(string virtualPath)
        {
            return virtualPath.Replace("~/",AppDomain.CurrentDomain.BaseDirectory).Replace(@"/", "\\");
        }

    }
}