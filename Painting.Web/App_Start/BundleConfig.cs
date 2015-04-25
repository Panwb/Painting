using System.Web;
using System.Web.Optimization;
using BundleTransformer.Core.Bundles;
using BundleTransformer.Core.Transformers;

namespace Painting.Web
{
    public class BundleConfig
    {
        // For more information on bundling, visit http://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            var cssTransformer = new CssTransformer();

            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Assets/Scripts/jquery-{version}.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Assets/Scripts/jquery.validate*"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at http://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Assets/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Assets/Scripts/bootstrap.js",
                      "~/Assets/Scripts/respond.js"));

            bundles.Add(new StyleBundle("~/Assets/Styles/css").Include(
                      "~/Assets/Styles/bootstrap/bootstrap.css",
                      "~/Assets/Styles/site.css"));

            var fontAwesome = new StyleBundle("~/bundles/font-awesome").Include(
                "~/Assets/Styles/font-awesome/variables.less");
            fontAwesome.Transforms.Add(cssTransformer);
            bundles.Add(fontAwesome);

            // Set EnableOptimizations to false for debugging. For more information,
            // visit http://go.microsoft.com/fwlink/?LinkId=301862
            //BundleTable.EnableOptimizations = true;
        }
    }
}
