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
    
    public partial class Introduce
    {
        public short ID { get; set; }
        public string Title { get; set; }
        public string SeoLink { get; set; }
        public string EnglishTitle { get; set; }
        public string SeoLink_En { get; set; }
        public string Summary { get; set; }
        public string Summary_En { get; set; }
        public string Content { get; set; }
        public Nullable<System.DateTime> LastUpdateTime { get; set; }
        public string LastUpdateUser { get; set; }
        public Nullable<int> ViewNo { get; set; }
        public string Content_En { get; set; }
        public Nullable<byte> LangId { get; set; }
        public Nullable<bool> IsShowHomePage { get; set; }
        public string UnsignName { get; set; }
        public string UnsignName_En { get; set; }
    }
}