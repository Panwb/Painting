using Painting.Framework.Events;

namespace Painting.Framework.Environment.Configuration {
    public interface IShellSettingsManagerEventHandler : IEventHandler {
        void Saved(ShellSettings settings);
    }
}