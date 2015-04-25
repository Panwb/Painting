using System.Collections.Generic;
using System.ComponentModel;

namespace Painting.Framework
{
    using System;
    using System.Diagnostics;
    using System.Net;
    using System.Security.Cryptography;
    using System.Text;
    using System.Text.RegularExpressions;

    public static class StringExtensions
    {
        private static readonly Regex emailExpression = new Regex(@"^([0-9a-zA-Z]+[-._+&])*[0-9a-zA-Z]+@([-0-9a-zA-Z]+[.])+[a-zA-Z]{2,6}$", RegexOptions.Singleline | RegexOptions.CultureInvariant | RegexOptions.Compiled);
        private static readonly Regex webUrlExpression = new Regex(@"(http|https)://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?", RegexOptions.Singleline | RegexOptions.CultureInvariant | RegexOptions.Compiled);
        private static readonly Regex stripHTMLExpression = new Regex("<\\S[^><]*>", RegexOptions.IgnoreCase | RegexOptions.Singleline | RegexOptions.Multiline | RegexOptions.CultureInvariant | RegexOptions.Compiled);

        [DebuggerStepThrough]
        public static string FormatWith(this string instance, params object[] args)
        {
            Invariant.IsNotNullOrEmpty(instance, "instance");

            return string.Format(Culture.Current, instance, args);
        }

        [DebuggerStepThrough]
        public static string Hash(this string instance)
        {
            Invariant.IsNotNullOrEmpty(instance, "instance");

            using (MD5 md5 = MD5.Create())
            {
                byte[] data = Encoding.Unicode.GetBytes(instance);
                byte[] hash = md5.ComputeHash(data);

                return Convert.ToBase64String(hash);
            }
        }

        [DebuggerStepThrough]
        public static T ToEnum<T>(this string instance, T defaultValue) where T : struct, IComparable, IFormattable
        {
            T convertedValue = defaultValue;

            if (!string.IsNullOrWhiteSpace(instance) && !Enum.TryParse(instance.Trim(), true, out convertedValue))
            {
                convertedValue = defaultValue;
            }

            return convertedValue;
        }

        [DebuggerStepThrough]
        public static string StripHtml(this string instance)
        {
            Invariant.IsNotNullOrEmpty(instance, "instance");

            return stripHTMLExpression.Replace(instance, string.Empty);
        }

        [DebuggerStepThrough]
        public static bool IsEmail(this string instance)
        {
            return !string.IsNullOrWhiteSpace(instance) && emailExpression.IsMatch(instance);
        }

        [DebuggerStepThrough]
        public static bool IsWebUrl(this string instance)
        {
            return !string.IsNullOrWhiteSpace(instance) && webUrlExpression.IsMatch(instance);
        }

        [DebuggerStepThrough]
        public static bool IsIPAddress(this string instance)
        {
            IPAddress ip;

            return !string.IsNullOrWhiteSpace(instance) && IPAddress.TryParse(instance, out ip);
        }

        [DebuggerStepThrough]
        public static bool AsBool(this string instance)
        {
            bool result = false;
            bool.TryParse(instance, out result);
            return result;
        }

        [DebuggerStepThrough]
        public static DateTime AsDateTime(this string instance)
        {
            DateTime result = DateTime.MinValue;
            DateTime.TryParse(instance, out result);
            return result;
        }

        [DebuggerStepThrough]
        public static Decimal AsDecimal(this string instance)
        {
            var result = (decimal)0.0;
            Decimal.TryParse(instance, out result);
            return result;
        }

        [DebuggerStepThrough]
        public static int AsInt(this string instance)
        {
            var result = (int)0;
            int.TryParse(instance, out result);
            return result;
        }

        [DebuggerStepThrough]
        public static bool IsInt(this string instance)
        {
            int result;
            return int.TryParse(instance, out result);
        }

        [DebuggerStepThrough]
        public static bool IsDateTime(this string instance)
        {
            DateTime result;
            return DateTime.TryParse(instance, out result);
        }

        [DebuggerStepThrough]
        public static bool IsFloat(this string instance)
        {
            float result;
            return float.TryParse(instance, out result);
        }

        [DebuggerStepThrough]
        public static bool IsNullEmpty(this string instance)
        {
            return string.IsNullOrEmpty(instance);
        }

        [DebuggerStepThrough]
        public static bool IsNullOrWhiteSpace(this string instance)
        {
            return string.IsNullOrWhiteSpace(instance);
        }

        public static T GetValueFromDescription<T>(string description)
        {
            var type = typeof(T);
            if (!type.IsEnum) throw new InvalidOperationException();
            foreach (var field in type.GetFields())
            {
                var attribute = Attribute.GetCustomAttribute(field,
                    typeof(DescriptionAttribute)) as DescriptionAttribute;
                if (attribute != null)
                {
                    if (attribute.Description == description)
                        return (T)field.GetValue(null);
                }
                else
                {
                    if (field.Name == description)
                        return (T)field.GetValue(null);
                }
            }
            throw new ArgumentException("Not found.", "description");
            // or return default(T);
        }

        /// Like linq take - takes the first x characters
        public static string Take(this string theString, int count, bool ellipsis = false)
        {
            int lengthToTake = Math.Min(count, theString.Length);
            var cutDownString = theString.Substring(0, lengthToTake);

            if (ellipsis && lengthToTake < theString.Length)
                cutDownString += "...";

            return cutDownString;
        }

        //like linq skip - skips the first x characters and returns the remaining string
        public static string Skip(this string theString, int count)
        {
            int startIndex = Math.Min(count, theString.Length);
            var cutDownString = theString.Substring(startIndex - 1);

            return cutDownString;
        }

        //reverses the string... pretty obvious really
        public static string Reverse(this string input)
        {
            char[] chars = input.ToCharArray();
            Array.Reverse(chars);
            return new String(chars);
        }

        // "a string".IsNullOrEmpty() beats string.IsNullOrEmpty("a string")
        public static bool IsNullOrEmpty(this string theString)
        {
            return string.IsNullOrEmpty(theString);
        }

        public static bool Match(this string value, string pattern)
        {
            return Regex.IsMatch(value, pattern);
        }

        //splits string into array with chunks of given size. not really that useful..
        public static string[] SplitIntoChunks(this string toSplit, int chunkSize)
        {
            if (string.IsNullOrEmpty(toSplit))
                return new string[] { "" };

            int stringLength = toSplit.Length;

            int chunksRequired = (int)Math.Ceiling((decimal)stringLength / (decimal)chunkSize);
            var stringArray = new string[chunksRequired];

            int lengthRemaining = stringLength;

            for (int i = 0; i < chunksRequired; i++)
            {
                int lengthToUse = Math.Min(lengthRemaining, chunkSize);
                int startIndex = chunkSize * i;
                stringArray[i] = toSplit.Substring(startIndex, lengthToUse);

                lengthRemaining = lengthRemaining - lengthToUse;
            }

            return stringArray;
        }

        //public static string Join(this IEnumerable<object> array, string seperator)
        //{
        //    if (array == null)
        //        return "";

        //    return string.Join(seperator, array.ToArray());
        //}

        public static string Join(this object[] array, string seperator)
        {
            if (array == null)
                return "";

            return string.Join(seperator, array);
        }

    }
}