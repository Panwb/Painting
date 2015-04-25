using System.Collections.Generic;

namespace Painting.Framework.Environment.Configuration {
    public interface IShellSettingsManager {
        IEnumerable<ShellSettings> LoadSettings();
        void SaveSettings(ShellSettings settings);
    }
}