using System;

namespace ATI.Web.Models
{
    public class ProductViewModel
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public int CateId { get; set; }
        public string Customer { get; set; }
        public string Summary { get; set; }
        public string Content { get; set; }
        public byte Status { get; set; }
        public string EnglishName { get; set; }
        public string SeoLink_En { get; set; }
        public string Image { get; set; }
        //public string Summary_En { get; set; }
        public string Content_En { get; set; }
        public int ViewNo { get; set; }
        public short? OrderNo { get; set; }
        public string Tags { get; set; }
        public byte IsHot { get; set; }
        public string LangId { get; set; }
        public string CreateDate { get; set; }
        public bool IsShowHomePage { get; set; }
    }
}