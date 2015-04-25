using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Web.ModelBinding;

namespace Painting.Model
{
    public interface IModel<T> { }

    public abstract class BaseModel<T> : IModel<T>
    {
        [DatabaseGeneratedAttribute(DatabaseGeneratedOption.Identity)]
        public virtual T Id { get; set; }

        [Required, StringLength(maximumLength: 250)]
        public virtual string Name { get; set; }

        [StringLength(maximumLength: 1000)]
        public virtual string Description { get; set; }

        public virtual string Status { get; set; }

        public virtual int CreatedBy { get; set; }

        public virtual int CreatedDate { get; set; }

        public virtual int UpdatedBy { get; set; }

        public virtual int UpdatedDate { get; set; }
    }
}