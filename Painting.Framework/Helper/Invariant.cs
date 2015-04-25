namespace Painting.Framework
{
    using System;
    using System.Diagnostics;

    /// <summary>
    /// Defines a utility class to validate method arguments.
    /// </summary>
    public static class Invariant
    {
        /// <summary>
        /// Determines whether the given argument is not null.
        /// </summary>
        /// <param name="value">The value.</param>
        /// <param name="parameterName">Name of the parameter.</param>
        [DebuggerStepThrough]
        public static void IsNotNull(object value, string parameterName)
        {
            if (value == null)
            {
                throw new ArgumentNullException(parameterName, string.Format(Culture.CurrentUI, ExceptionMessages.CannotBeNull, parameterName));
            }
        }

        /// <summary>
        /// Precondition check - should run regardless of preprocessor directives.
        /// </summary>
        public static void Require(bool assertion, string message)
        {          
                if (!assertion) throw new NullReferenceException(message);     
           
        }

        /// <summary>
        /// Postcondition check.
        /// </summary>
        public static void Ensure(bool assertion, string message)
        {
            if (!assertion) throw new ApplicationException(message);
        }
        [DebuggerStepThrough]
        public static void IsNotNullOrEmpty(string parameter, string parameterName)
        {
            if (string.IsNullOrWhiteSpace(parameter))
            {
                throw new ArgumentException(ExceptionMessages.ArgumentCannotBeNullOrEmpty.FormatWith(parameterName), parameterName);
            }
        }

        [DebuggerStepThrough]
        public static void IsNotZeroOrNegative(int parameter, string parameterName)
        {
            if (parameter <= 0)
            {
                throw new ArgumentOutOfRangeException(parameterName, ExceptionMessages.ArgumentCannotBeNegativeOrZero.FormatWith(parameterName));
            }
        }

        [DebuggerStepThrough]
        public static void IsNotNegative(int parameter, string parameterName)
        {
            if (parameter < 0)
            {
                throw new ArgumentOutOfRangeException(parameterName, ExceptionMessages.ArgumentCannotBeNegative.FormatWith(parameterName));
            }
        }

        [DebuggerStepThrough]
        public static void IsNotZeroOrNegative(long parameter, string parameterName)
        {
            if (parameter <= 0)
            {
                throw new ArgumentOutOfRangeException(parameterName, ExceptionMessages.ArgumentCannotBeNegativeOrZero.FormatWith(parameterName));
            }
        }

        [DebuggerStepThrough]
        public static void IsNotNegative(long parameter, string parameterName)
        {
            if (parameter < 0)
            {
                throw new ArgumentOutOfRangeException(parameterName, ExceptionMessages.ArgumentCannotBeNegative.FormatWith(parameterName));
            }
        }

        [DebuggerStepThrough]
        public static void IsNotZeroOrNegative(float parameter, string parameterName)
        {
            if (parameter <= 0)
            {
                throw new ArgumentOutOfRangeException(parameterName, ExceptionMessages.ArgumentCannotBeNegativeOrZero.FormatWith(parameterName));
            }
        }

        [DebuggerStepThrough]
        public static void IsNotNegative(float parameter, string parameterName)
        {
            if (parameter < 0)
            {
                throw new ArgumentOutOfRangeException(parameterName, ExceptionMessages.ArgumentCannotBeNegative.FormatWith(parameterName));
            }
        }
    }
}