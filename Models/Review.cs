using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CDOSC.Models
{
    public class Review
    {
        public string Reviewer { get; set; }
        public int Stars { get; set; }
        public string Headline { get; set; }
        public string ReviewCopy { get; set;}
    }
}