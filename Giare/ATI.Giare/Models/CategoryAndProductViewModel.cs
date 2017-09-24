using System.Collections.Generic;

namespace ATI.Web.Models
{
    public class CategoryAndProductViewModel
    {

        public List<CategoryItems> Categories { get; set; }
        public List<ProductItems> Products { get; set; }
    }

    public class ProductItems
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public string Image { get; set; }

        public string SeoLink { get; set; }

        public string CategoryName { get; set; }

        public int CateId { get; set; }
    }

    public class CategoryItems
    {
        public int CateId { get; set; }

        public string CategoryName { get; set; }
    }
}