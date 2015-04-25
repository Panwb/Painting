using System.Collections.Generic;

namespace Painting.Model
{
    public class Team : BaseModel<int>
    {
        public virtual IEnumerable<User> Users { get; set; }
    }
}
