using System;
using Kingston.ComLib.Logging;

namespace Kingston.ComLib.Logging {
    public class NullLogger : ILogger {
        private static readonly ILogger _instance = new NullLogger();

        public static ILogger Instance {
            get { return _instance; }
        }

        public void Info(object infoObject)
        {
        }

        public void Debug(object debugObject)
        {
        }

        public void Error(object errorObject)
        {
        }

        public void Error(Exception e, object errorObject)
        {
        }

        public void Warn(object errorObject)
        {
            
        }

        public void Fatal(object errorObject)
        {
            
        }

        public bool IsEnabled(LogLevel level)
        {
            return false;
        }
    }
}