using Painting.Model;
using System;
namespace Painting.Data
{
    public interface ITeamRepository : IRepository
    {
        System.Collections.Generic.List<User> GetUsersInTeam(int teamId);
    }
}
