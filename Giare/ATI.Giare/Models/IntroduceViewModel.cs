using System;

namespace ATI.Web.Models
{
    public class IntroduceViewModel
    {
        public int Id { get; set; }

        public string Title { get; set; }
        public string Content { get; set; }
        public string ContentEn { get; set; }
        public bool? IsShowHomePage { get; set; }
    }
}