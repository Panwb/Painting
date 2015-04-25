﻿using System.Collections.Generic;
using Painting.Framework.Environment.Extensions.Models;

namespace Painting.Framework.Environment.Extensions.Folders {
    public class ThemeFolders : IExtensionFolders {
        private readonly IEnumerable<string> _paths;
        private readonly IExtensionHarvester _extensionHarvester;

        public ThemeFolders(IEnumerable<string> paths, IExtensionHarvester extensionHarvester) {
            _paths = paths;
            _extensionHarvester = extensionHarvester;
        }

        public IEnumerable<ExtensionDescriptor> AvailableExtensions() {
            return _extensionHarvester.HarvestExtensions(_paths, DefaultExtensionTypes.Theme, "Theme.txt", true/*isManifestOptional*/);
        }
    }
}