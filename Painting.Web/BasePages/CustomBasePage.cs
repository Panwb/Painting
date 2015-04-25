using Painting.Data;
using System.Web.Mvc;

namespace Painting.Web.BasePages
{
    public class CustomBasePage : WebViewPage
    {
        public ITeamRepository teamRepo { get; set; }
        public IRepository repo { get; set; }

        public override void Execute() { }
    }
}