namespace Kingston.ComLib.Helper
{
    using System.Collections.Generic;
    using System.Collections.ObjectModel;
    using System.Diagnostics;

    public class PagedResult<T>
    {
        [DebuggerStepThrough]
        public PagedResult(IEnumerable<T> result, int total)
        {
            Invariant.IsNotNull(result, "result");
            Invariant.IsNotNegative(total, "total");

            Result = new ReadOnlyCollection<T>(new List<T>(result));
            Total = total;
        }

        [DebuggerStepThrough]
        public PagedResult() : this(new List<T>(), 0)
        {
        }

        public ICollection<T> Result
        {
            get;
            private set;
        }

        public int Total
        {
            get;
            private set;
        }

        public bool IsEmpty
        {
            [DebuggerStepThrough]
            get
            {
                return (Result.Count == 0) || (Total == 0);
            }
        }
    }
}