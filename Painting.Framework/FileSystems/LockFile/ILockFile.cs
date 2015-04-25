using System;

namespace Painting.Framework.FileSystems.LockFile
{
    public interface ILockFile : IDisposable {
        void Release();
    }
}
