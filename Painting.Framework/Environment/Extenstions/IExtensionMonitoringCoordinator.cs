using System;
using Painting.Framework.Caching;

namespace Painting.Framework.Environment.Extensions {
    public interface IExtensionMonitoringCoordinator {
        void MonitorExtensions(Action<IVolatileToken> monitor);
    }
}