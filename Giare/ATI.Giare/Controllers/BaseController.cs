using ATI.Web.Helper;
using ATI.Web.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;

namespace ATI.Web.Controllers
{
    public class BaseController : Controller
    {
        public Entities db = new Entities();

        public BriefUser CurrentUser
        {
            get { return Session["User"] == null ? null : (BriefUser)Session["User"]; }
            set { Session["User"] = value; }
        }

        public ShoppingCart Cart
        {
            get { return Session["ShoppingCart"] == null ? null : (ShoppingCart)Session["ShoppingCart"]; }
            set { Session["ShoppingCart"] = value; }
        }

        public void AddLog(string sessionId)
        {
            var lang = ATICurrentSession.GetLang;
            var cates = db.CateProducts.Where(item => item.ParrentCateId == -1 && !item.IsDelete && item.LangId == lang).ToList();

            var ListCate = new List<Cates>();

            foreach (var item in cates)
            {
                var ListProduct = new List<Product>();

                var products = db.Products.Where(p => p.CateId == item.ID && !p.IsDelete && p.LangId == lang).ToList();

                foreach (var product in products)
                {
                    ListProduct.Add(product);
                }

                ListCate.Add(new Cates { SeoLink = item.SeoLink, Name = item.Name, Products = ListProduct });
            }

            ViewBag.Cates = ListCate;

            if (HttpContext.Request.Browser.MajorVersion == 0 || Common.ClientIP.Equals("::1") || HttpContext.Request.Browser.Crawler)
            {
                return;
            }

            var num = Common.ClientIP.Split('.');
            var integerIp = (16777216 * Convert.ToDecimal(num[0])) + (65536 * Convert.ToDecimal(num[1])) + (256 * Convert.ToDecimal(num[2])) + Convert.ToDecimal(num[3]);


            if (db.Trackers.Count(item => item.IP.Equals(Common.ClientIP) && item.PageUrl.Equals(Request.CurrentExecutionFilePath) &&
                item.SessionID.Equals(sessionId)) > 0)
            {
                return;
            }

            db.Trackers.Add(new Tracker
            {
                Browser = HttpContext.Request.Browser.Browser,
                ID = 1,
                InTime = DateTime.Now,
                IP = Common.ClientIP,
                OS = HttpContext.Request.Browser.Platform,
                PageUrl = HttpContext.Request.CurrentExecutionFilePath,
                SessionID = sessionId,
                UrlReferrer = Common.UrlReferrer(),
                Version = HttpContext.Request.Browser.MajorVersion.ToString(),
                Country = "VN",
                City = "...",
                IsMobileDevice = Request.Browser.IsMobileDevice,
                MobileDeviceManufacturer = Request.Browser.MobileDeviceManufacturer
            });

            db.SaveChanges();
        }
    }



    public class Cates
    {
        public string SeoLink { get; set; }

        public string Name { get; set; }

        public List<Product> Products { get; set; }
    }

    public class BriefUser
    {
        public int Id { get; set; }

        public string UserName { get; set; }

        public string Image { get; set; }

        public string FullName { get; set; }
    }
}