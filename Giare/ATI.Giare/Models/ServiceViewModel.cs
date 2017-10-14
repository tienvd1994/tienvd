using System;

namespace ATI.Web.Models
{
    public class ServiceViewModel
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string EnglishName { get; set; }
        public string Image { get; set; }
        public string Summary { get; set; }
        public string LangId { get; set; }
        public string Content { get; set; }
        public string Content_En { get; set; }
        public bool? IsShowHomePage { get; set; }
    }
}