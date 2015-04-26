using Painting.Data;
using Painting.Framework.Logging;
using Painting.Model;
using Painting.Web.Filters;
using System.Linq;
using System.Web.Mvc;

namespace Painting.Web.Controllers
{
    public class TeamController : Controller
    {
        private IRepository repo;
        private ILogger _logger;
        public TeamController(IRepository repo, ILogger logger)
        {
            this.repo = repo;
            _logger = logger;
        }

        [HttpGet]
        public ActionResult Index()
        {
            var teams = repo.GetAll<Team>().ToList();
            _logger.Info("GOOD");
            return View(teams);
        }

        [HttpGet]
        public ActionResult InsertTeam()
        {
            return View();
        }

        public ActionResult TeamDetails(int id)
        {
            ViewBag.TeamId = id;
            return View();
        }
        
        [HttpPost]
        [LogActionFilter]
        public ActionResult InsertTeam(Team team)
        {
            if (ModelState.IsValid)
            {
                repo.Insert<Team>(team);
                repo.SaveChanges();
                return RedirectToAction("Index");
            }
            
            return View();
        }
    }
}