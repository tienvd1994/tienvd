using System;

namespace ATI.Web.Models
{
    public class NewsViewModel
    {
        public int ID { get; set; }
        public string Title { get; set; }
        public string Title_En { get; set; }
        public string Image { get; set; }
        public string Summary { get; set; }
        public string Content { get; set; }
        public DateTime PostTime { get; set; }
        public byte Status { get; set; }
        public string Author { get; set; }
        public short IsHot { get; set; }
        public int CateId { get; set; }
        public string LangId { get; set; }
    }
}