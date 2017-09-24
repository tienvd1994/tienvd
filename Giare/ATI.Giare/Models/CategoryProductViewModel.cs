namespace ATI.Web.Models
{
    public class CategoryProductViewModel
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string EnglishName { get; set; }
        public short ParrentCateId { get; set; }
        public string ParrentCateName { get; set; }
        public short OrderNo { get; set; }
        public string Description { get; set; }
        public string LangId { get; set; }
        public bool? IsShowHomePage { get; set; }
    }
}