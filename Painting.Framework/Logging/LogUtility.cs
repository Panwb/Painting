using System;
using System.Text;

namespace Painting.Framework.Logging
{
    internal class LogUtility
    {
        public static string BuildExceptionMessage(Exception x)
        {
            Exception logException = x;
            if (x.InnerException != null)
                logException = x.InnerException;

            var strErrorMsg = new StringBuilder(200);
            strErrorMsg.Append(logException.Message + System.Environment.NewLine + "    Error in Path :" + System.Web.HttpContext.Current.Request.Path);

            // Get the QueryString along with the Virtual Path
            strErrorMsg.Append(System.Environment.NewLine + "    Raw Url :" + System.Web.HttpContext.Current.Request.RawUrl);

            // Get the error message
            strErrorMsg.Append(Environment.NewLine + "    Message :" + logException.Message);

            // Source of the message
            strErrorMsg.Append(System.Environment.NewLine + "    Source :" + logException.Source);

            // Stack Trace of the error
            strErrorMsg.Append(System.Environment.NewLine + "    Stack Trace :" + logException.StackTrace);

            // Method where the error occurred
            strErrorMsg.Append(System.Environment.NewLine + "    TargetSite :" + logException.TargetSite);
            return strErrorMsg.ToString();
        }
    }
}
