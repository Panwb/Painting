using System;

namespace Painting.Framework.Environment.Extensions {
    [AttributeUsage(AttributeTargets.Class)]
    public class FeatureAttribute : Attribute {
        public FeatureAttribute(string text) {
            FeatureName = text;
        }

        public string FeatureName { get; set; }
    }
}