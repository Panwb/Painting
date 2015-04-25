using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using Painting.Data;
using Painting.Model;

namespace Painting.Data
{
    public class TeamRepository : SqlRepository, ITeamRepository
    {
        public TeamRepository(IDbContext context)
            : base(context)
        {

        }
        public List<User> GetUsersInTeam(int teamId)
        {
            return (from u in this.GetAll<User>()
                    where u.TeamId == teamId
                    select u).ToList();
        }
    }
}
