using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Painting.Model
{
    public interface IModel<T>
    {
        T Id { get; set; }
    }
    public class Model<T>
    {
        [DatabaseGeneratedAttribute(DatabaseGeneratedOption.Identity)]
        public virtual T Id { get; set; }
    }
}
