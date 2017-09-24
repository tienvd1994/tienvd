using System;

namespace ATI.Web.Models
{
    public class CateNewsViewModel
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string EnglishName { get; set; }
        public short OrderNo { get; set; }
        public int? LangId { get; set; }
        public int? Type { get; set; }
    }
}