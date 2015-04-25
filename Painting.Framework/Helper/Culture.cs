namespace Painting.Framework
{
    using System.Globalization;
    using System.Diagnostics;

    public static class Culture
    {
        public static CultureInfo Current
        {
            [DebuggerStepThrough]
            get
            {
                return CultureInfo.CurrentCulture;
            }
        }

        public static CultureInfo CurrentUI
        {
            [DebuggerStepThrough]
            get
            {
                return CultureInfo.CurrentUICulture;
            }
        }

        public static CultureInfo Invariant
        {
            [DebuggerStepThrough]
            get
            {
                return CultureInfo.InvariantCulture;
            }
        }
    }
}