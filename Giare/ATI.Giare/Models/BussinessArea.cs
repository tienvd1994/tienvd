//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ATI.Web.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class BussinessArea
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string SeoLink { get; set; }
        public string EnglishName { get; set; }
        public string SeoLink_En { get; set; }
        public string Image { get; set; }
        public string Content { get; set; }
        public string Content_En { get; set; }
        public int ViewNo { get; set; }
        public int OrderNo { get; set; }
        public Nullable<int> LangId { get; set; }
    }
}