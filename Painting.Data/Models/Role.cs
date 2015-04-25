using System.Collections.Generic;

namespace Painting.Model
{
    public class Role : BaseModel<int>
    {
        public virtual IEnumerable<User> Users { get; set; }
    }
}
