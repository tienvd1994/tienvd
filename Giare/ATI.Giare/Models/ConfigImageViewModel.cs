namespace ATI.Web.Models
{
    public class ConfigImageViewModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Name_En { get; set; }
        public string Image { get; set; }
        public string Url { get; set; }
        public int? Status { get; set; }
        public int? LangId { get; set; }
    }
}