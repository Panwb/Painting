using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace Painting.Web.Mvc
{
    public abstract class WebViewPage : System.Web.Mvc.WebViewPage<dynamic>
    {
    }

    public abstract class WebViewPage<TModel> : System.Web.Mvc.WebViewPage<TModel>
    {
        public new Html5Helper<TModel> Html5 { get; set; }

        public override void InitHelpers()
        {
            base.InitHelpers();
            Html5 = new Html5Helper<TModel>(base.ViewContext, this);
        }
    }
    public class Html5Helper
    {
        public Html5Helper(ViewContext viewContext,
          IViewDataContainer viewDataContainer)
            : this(viewContext, viewDataContainer, RouteTable.Routes)
        {
        }

        public Html5Helper(ViewContext viewContext,
           IViewDataContainer viewDataContainer, RouteCollection routeCollection)
        {
            ViewContext = viewContext;
            ViewData = new ViewDataDictionary(viewDataContainer.ViewData);
        }

        public ViewDataDictionary ViewData
        {
            get;
            private set;
        }

        public ViewContext ViewContext
        {
            get;
            private set;
        }
    }

    public static class Html5Extensions
    {
        public static IHtmlString EmailInput(this Html5Helper html, string name, string value)
        {
            var tagBuilder = new TagBuilder("input");
            tagBuilder.Attributes.Add("type", "email");
            tagBuilder.Attributes.Add("value", value);
            return new HtmlString(tagBuilder.ToString());
        }
    }

    public class Html5Helper<TModel> : Html5Helper
    {
        public Html5Helper(ViewContext viewContext, IViewDataContainer container)
            : this(viewContext, container, RouteTable.Routes)
        {
        }

        public Html5Helper(ViewContext viewContext, IViewDataContainer container,
            RouteCollection routeCollection)
            : base(viewContext, container,
                routeCollection)
        {
            ViewData = new ViewDataDictionary<TModel>(container.ViewData);
        }

        public new ViewDataDictionary<TModel> ViewData
        {
            get;
            private set;
        }
    }
}