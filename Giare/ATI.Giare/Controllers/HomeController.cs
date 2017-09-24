using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Entity.Core.Objects;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using Newtonsoft.Json;
using ATI.Web.Helper;
using ATI.Web.Models;

namespace ATI.Web.Controllers
{
    public class HomeController : BaseController
    {
        private const string BUILDING_SERVICE = "ServiceBuilding";

        private const string BUILDING_ENVIROMENT = "ServiceEnviroment";

        private const string SOLOGAN = "Sologan";

        [Localization]
        public ActionResult Index()
        {
            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.Where(x => x.LangId == ATICurrentSession.GetLang).FirstOrDefault();
            ViewBag.TopNews = db.News.Where(item => item.Type == 0 && item.LangId == ATICurrentSession.GetLang).OrderByDescending(item => item.ID).Take(3).ToList();
            ViewBag.ModuleId = 1;
            ViewBag.Services = db.Partners.Where(m => m.LangId == 0).OrderBy(m => m.OrderNo).Take(3).ToList();
            AddLog(HttpContext.Session.SessionID);
            var categories = db.CateProducts.Where(m => !m.IsDelete && m.ParrentCateId == -1).Select(m => new CategoryItems
            {
                CateId = m.ID,
                CategoryName = m.Name
            }).ToList();

            var listProduct = new List<ProductItems>();

            foreach (var item in categories)
            {
                var products = db.Products.Where(m => !m.IsDelete && m.Status == 1 && m.IsHot == 1 && m.CateId == item.CateId).Select(m => new ProductItems
                {
                    Id = m.ID,
                    Name = m.Name,
                    Image = m.Image,
                    SeoLink = m.SeoLink,
                    CategoryName = item.CategoryName
                }).ToList();

                listProduct.AddRange(products);
            }

            var categoryAndProductViewModel = new CategoryAndProductViewModel()
            {
                Categories = categories,
                Products = listProduct
            };

            ViewBag.ListCateAndProduct = categoryAndProductViewModel;

            return View();
        }

        [Localization]
        public ActionResult About(string seolink)
        {
            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.Where(x => x.LangId == ATICurrentSession.GetLang).FirstOrDefault();
            AddLog(HttpContext.Session.SessionID);
            var introduce = db.Introduces.FirstOrDefault(item => item.SeoLink.Equals(seolink.ToLower()));

            if (introduce == null)
            {
                return View("FileNotFound");
            }

            ViewBag.IntroduceOther = db.Introduces.Where(m => m.ID != introduce.ID).ToList();
            ViewBag.Content = introduce;

            return View();
        }

        [Localization]
        public ActionResult Product(string seolink)
        {
            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.Where(x => x.LangId == ATICurrentSession.GetLang).FirstOrDefault();
            AddLog(HttpContext.Session.SessionID);
            var currentCate = db.CateProducts.FirstOrDefault(item => item.SeoLink.Equals(seolink.ToLower()));

            if (currentCate == null)
            {
                return View("FileNotFound");
            }

            ViewBag.Cate = currentCate;
            ViewBag.Products = db.Products.Where(m => !m.IsDelete && m.Status == 1 && m.CateId == currentCate.ID).ToList();
            ViewBag.ModuleId = 2;

            return View();
        }

        [Localization]
        public ActionResult Project()
        {
            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.FirstOrDefault(c => c.LangId == ATICurrentSession.GetLang);
            ViewBag.Partners = db.Partners.Where(x => x.LangId == ATICurrentSession.GetLang).Take(9).ToList();
            AddLog(HttpContext.Session.SessionID);

            ViewBag.Tags = db.Tags.Take(20).ToList();

            var pageIndex = string.IsNullOrEmpty(Request.Params["p"]) ? 1 : Convert.ToInt32(Request.Params["p"]);
            var recordPerPage = string.IsNullOrEmpty(Request.Params["r"]) ? 10 : Convert.ToInt32(Request.Params["r"]);

            var output = new ObjectParameter("TotalRecord", typeof(int));

            //ViewBag.Products = db.ProductGetByName((short)ATICurrentSession.GetLang, -1, string.Empty, pageIndex, recordPerPage, output).ToList();

            ViewBag.totalRecord = output.Value;
            ViewBag.CurrPage = pageIndex;
            ViewBag.ModuleId = 2;

            return View();
        }

        [Localization]
        public ActionResult ProductDetail(string seolink)
        {
            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.FirstOrDefault(c => c.LangId == ATICurrentSession.GetLang);
            ViewBag.Cart = Cart;
            ViewBag.Partners = db.Partners.Where(x => x.LangId == ATICurrentSession.GetLang).ToList();
            AddLog(HttpContext.Session.SessionID);
            var product = db.Products.Where(x => x.LangId == ATICurrentSession.GetLang).FirstOrDefault(item => item.SeoLink.Equals(seolink.ToLower()) && !item.IsDelete && item.Status == 1);

            if (product == null)
            {
                return View("FileNotFound");
            }

            product.ViewNo += 1;
            product.Content_En = string.IsNullOrEmpty(product.Content_En) ? product.Content : product.Content_En;
            db.SaveChanges();

            ViewBag.Tags = db.Tags.Take(20).ToList();
            ViewBag.Category = db.CateProducts.FirstOrDefault(item => item.ID == product.CateId);
            ViewBag.Product = product;
            ViewBag.ProductsOther = db.Products.Where(m => !m.IsDelete && m.Status == 1 && m.ID != product.ID && m.CateId == product.CateId).ToList();
            ViewBag.ModuleId = 2;

            return View();
        }

        [Localization]
        public ActionResult SearchProduct()
        {
            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.FirstOrDefault(c => c.LangId == ATICurrentSession.GetLang);
            ViewBag.Cart = Cart;
            ViewBag.Partners = db.Partners.Where(x => x.LangId == ATICurrentSession.GetLang).ToList();
            AddLog(HttpContext.Session.SessionID);
            var pageIndex = string.IsNullOrEmpty(Request.Params["p"]) ? 1 : Convert.ToInt32(Request.Params["p"]);
            var recordPerPage = string.IsNullOrEmpty(Request.Params["r"]) ? 10 : Convert.ToInt32(Request.Params["r"]);
            var key = string.IsNullOrEmpty(Request.Params["k"]) ? "" : Request.Params["k"];

            var keywordArray = Common.UCS2Convert(key).ToLower().Split(' ');

            var keyword = string.Empty;

            foreach (var item in keywordArray)
            {
                if (string.IsNullOrEmpty(item))
                {
                    continue;
                }

                keyword += keyword.Equals(string.Empty) ? "\"" + item + "*\"" + "" : " AND \"" + item + "*\"";
            }

            var output = new ObjectParameter("TotalRecord", typeof(int));
            //ViewBag.Products = db.ProductGetByName((short)ATICurrentSession.GetLang, -1, keyword, pageIndex, recordPerPage, output).ToList();
            ViewBag.totalRecord = output.Value;
            ViewBag.CurrPage = pageIndex;
            ViewBag.Key = key;
            ViewBag.Tags = db.Tags.Take(20).ToList();
            ViewBag.ModuleId = 2;

            return View();
        }

        [Localization]
        public ActionResult ServiceDetail(string seolink)
        {
            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.Where(x => x.LangId == ATICurrentSession.GetLang).FirstOrDefault();
            ViewBag.Cart = Cart;
            AddLog(HttpContext.Session.SessionID);

            if (seolink == null)
            {
                return View("FileNotFound");
            }

            var partner = db.Partners.Where(x => x.LangId == ATICurrentSession.GetLang).FirstOrDefault(item => item.SeoLink.Equals(seolink.ToLower()));

            if (partner == null)
            {
                return View("FileNotFound");
            }

            //partner.ViewNo += 1;
            //db.SaveChanges();
            ViewBag.Partner = partner;
            ViewBag.ModuleId = 8;
            ViewBag.PartnersOther = db.Partners.Where(x => x.LangId == ATICurrentSession.GetLang && x.ID != partner.ID).ToList();

            return View();
        }

        [Localization]
        public ActionResult FAQ()
        {
            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.Where(x => x.LangId == ATICurrentSession.GetLang).FirstOrDefault();
            ViewBag.Cart = Cart;
            ViewBag.Partners = db.Partners.Where(x => x.LangId == ATICurrentSession.GetLang).ToList();
            //ViewBag.TopNews = db.News.OrderByDescending(item => item.PostTime).Take(3).ToList();
            AddLog(HttpContext.Session.SessionID);

            ViewBag.FAQs = db.FAQs.OrderBy(c => c.Time).Take(20).ToList();
            ViewBag.ModuleId = 5;

            return View();
        }

        [Localization]
        public ActionResult Agency(string province)
        {
            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.Where(x => x.LangId == ATICurrentSession.GetLang).FirstOrDefault();
            ViewBag.Cart = Cart;
            ViewBag.Partners = db.Partners.Where(x => x.LangId == ATICurrentSession.GetLang).ToList();
            //ViewBag.TopNews = db.News.OrderByDescending(item => item.PostTime).Take(3).ToList();
            AddLog(HttpContext.Session.SessionID);

            if (!string.IsNullOrEmpty(province))
            {
                var provin = db.Provinces.Where(x => x.LangId == ATICurrentSession.GetLang).FirstOrDefault(item => item.SeoLink.ToLower().Equals(province.ToLower()));

                if (provin == null)
                {
                    return View("FileNotFound");
                }

                ViewBag.District = db.Districts.Where(item => item.ProvinceSeoLink.Equals(provin.SeoLink) && item.LangId == ATICurrentSession.GetLang).ToList();
                ViewBag.Province = provin;
            }

            var pageIndex = string.IsNullOrEmpty(Request.Params["p"]) ? 1 : Convert.ToInt32(Request.Params["p"]);
            var recordPerPage = string.IsNullOrEmpty(Request.Params["r"]) ? 10 : Convert.ToInt32(Request.Params["r"]);
            var key = string.IsNullOrEmpty(Request.Params["k"]) ? "" : Request.Params["k"];

            var keywordArray = Common.UCS2Convert(key).ToLower().Split(' ');

            var keyword = string.Empty;

            foreach (var item in keywordArray)
            {
                if (string.IsNullOrEmpty(item))
                {
                    continue;
                }

                keyword += keyword.Equals(string.Empty) ? "\"" + item + "*\"" + "" : " AND \"" + item + "*\"";
            }

            var output = new ObjectParameter("TotalRecord", typeof(int));
            //ViewBag.Agencies = db.AgencyGetByNameAndProvinceAndDistrictAndStatus(keyword, province, string.Empty, pageIndex, recordPerPage, output).ToList();
            ViewBag.totalRecord = output.Value;
            ViewBag.CurrPage = pageIndex;
            ViewBag.Key = key;
            ViewBag.ModuleId = 4;

            return View();
        }

        [Localization]
        public ActionResult AgencyDistrict(string district, string province)
        {
            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.Where(x => x.LangId == ATICurrentSession.GetLang).FirstOrDefault();
            ViewBag.Cart = Cart;
            ViewBag.Partners = db.Partners.Where(x => x.LangId == ATICurrentSession.GetLang).ToList();
            //ViewBag.TopNews = db.News.OrderByDescending(item => item.PostTime).Take(3).ToList();
            AddLog(HttpContext.Session.SessionID);

            if (!string.IsNullOrEmpty(province))
            {
                var provin = db.Provinces.Where(x => x.LangId == ATICurrentSession.GetLang).FirstOrDefault(item => item.SeoLink.ToLower().Equals(province.ToLower()));

                if (provin == null)
                {
                    return View("FileNotFound");
                }

                ViewBag.District = db.Districts.Where(item => item.ProvinceSeoLink.Equals(provin.SeoLink) && item.LangId == ATICurrentSession.GetLang).ToList();
                ViewBag.Province = provin;
            }

            if (!string.IsNullOrEmpty(district))
            {
                var distric = db.Districts.Where(x => x.LangId == ATICurrentSession.GetLang).FirstOrDefault(item => item.SeoLink.ToLower().Equals(district.ToLower()));

                if (distric == null)
                {
                    return View("FileNotFound");
                }

                ViewBag.District = distric;
            }

            var pageIndex = string.IsNullOrEmpty(Request.Params["p"]) ? 1 : Convert.ToInt32(Request.Params["p"]);
            var recordPerPage = string.IsNullOrEmpty(Request.Params["r"]) ? 10 : Convert.ToInt32(Request.Params["r"]);
            var key = string.IsNullOrEmpty(Request.Params["k"]) ? "" : Request.Params["k"];

            var keywordArray = Common.UCS2Convert(key).ToLower().Split(' ');

            var keyword = string.Empty;

            foreach (var item in keywordArray)
            {
                if (string.IsNullOrEmpty(item))
                {
                    continue;
                }

                keyword += keyword.Equals(string.Empty) ? "\"" + item + "*\"" + "" : " AND \"" + item + "*\"";
            }

            var output = new ObjectParameter("TotalRecord", typeof(int));
            //ViewBag.Agencies = db.AgencyGetByNameAndProvinceAndDistrict(keyword, province, string.Empty, pageIndex, recordPerPage, output).ToList();
            ViewBag.totalRecord = output.Value;
            ViewBag.CurrPage = pageIndex;
            ViewBag.Key = key;
            ViewBag.ModuleId = 4;

            return View();
        }

        [Localization]
        public ActionResult AgencyDetail(string seoLink)
        {
            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.FirstOrDefault(c => c.LangId == ATICurrentSession.GetLang);
            ViewBag.Cart = Cart;
            ViewBag.Partners = db.Partners.Where(x => x.LangId == ATICurrentSession.GetLang).ToList();
            //ViewBag.TopNews = db.News.OrderByDescending(item => item.PostTime).Take(3).ToList();
            AddLog(HttpContext.Session.SessionID);
            var agency = db.Agencies.Where(x => x.LangId == ATICurrentSession.GetLang).FirstOrDefault(item => item.SeoLink.ToLower().Equals(seoLink.ToLower()) && item.Status == 1);

            agency.ViewNo += 1;
            db.SaveChanges();

            ViewBag.Agency = agency;
            ViewBag.ModuleId = 4;

            return View();
        }

        [Localization]
        public ActionResult Service()
        {
            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.Where(x => x.LangId == ATICurrentSession.GetLang).FirstOrDefault();
            ViewBag.Cart = Cart;
            ViewBag.TopNews = db.News.Where(x => x.LangId == ATICurrentSession.GetLang).OrderByDescending(item => item.PostTime).Take(3).ToList();
            AddLog(HttpContext.Session.SessionID);
            ViewBag.Partners = db.Partners.Where(x => x.LangId == ATICurrentSession.GetLang).ToList();
            ViewBag.ModuleId = 4;

            return View();
        }

        //[Localization]
        //public ActionResult Project()
        //{
        //    ViewBag.Context = HttpContext;
        //    ViewBag.CommonInfo = db.CommonInfoes.FirstOrDefault(c => c.LangId == ATICurrentSession.GetLang);
        //    ViewBag.Cart = Cart;
        //    //ViewBag.Partners = db.Partners.Where(x => x.LangId == ATICurrentSession.GetLang).ToList();
        //    //ViewBag.CateProducts = db.CateProducts.ToList();
        //    //ViewBag.Contractors = db.Contractors.Where(item => item.IsDelete == 0 && item.Status == 1).OrderBy(c => c.OrderNo).ToList();
        //    //ViewBag.TopNews = db.News.OrderByDescending(item => item.PostTime).Take(3).ToList();
        //    ViewBag.ModuleId = 5;
        //    AddLog(HttpContext.Session.SessionID);

        //    return View();
        //}

        [Localization]
        public ActionResult ProjectDetail(string seolink)
        {
            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.Where(x => x.LangId == ATICurrentSession.GetLang).FirstOrDefault();
            ViewBag.Cart = Cart;
            ViewBag.Partners = db.Partners.Where(x => x.LangId == ATICurrentSession.GetLang).ToList();
            //ViewBag.CateProducts = db.CateProducts.ToList();
            //ViewBag.TopNews = db.News.OrderByDescending(item => item.PostTime).Take(3).ToList();
            AddLog(HttpContext.Session.SessionID);

            var contractor = db.Contractors.Where(x => x.LangId == ATICurrentSession.GetLang).FirstOrDefault(item => item.IsDelete == 0 && item.Status == 1 && item.SeoLink.Equals(seolink.ToLower()));

            if (contractor == null)
            {
                return View("FileNotFound");
            }

            contractor.ViewNo += 1;
            db.SaveChanges();

            ViewBag.Contractor = contractor;
            ViewBag.ModuleId = 5;

            return View();
        }

        [Localization]
        public ActionResult News(string seolink)
        {
            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.Where(x => x.LangId == ATICurrentSession.GetLang).FirstOrDefault();
            ViewBag.Cart = Cart;
            ViewBag.Partners = db.Partners.Where(x => x.LangId == ATICurrentSession.GetLang).ToList();
            AddLog(HttpContext.Session.SessionID);

            var cate = db.CateNews.FirstOrDefault(item => item.SeoLink.ToLower().Equals(seolink.ToLower()) && item.Type == 0);

            if (cate == null)
            {
                return View("FileNotFound");
            }

            var pageIndex = string.IsNullOrEmpty(Request.Params["p"]) ? 1 : Convert.ToInt32(Request.Params["p"]);
            var recordPerPage = string.IsNullOrEmpty(Request.Params["r"]) ? 10 : Convert.ToInt32(Request.Params["r"]);

            var output = new ObjectParameter("TotalRecord", typeof(int));
            ViewBag.News = db.sp_News_SearchByTitle(ATICurrentSession.GetLang, cate.ID, 0, string.Empty, pageIndex, recordPerPage, output).ToList();
            ViewBag.totalRecord = output.Value;
            ViewBag.CurrPage = pageIndex;
            ViewBag.ModuleId = seolink.Equals("tuyen-dung") ? 7 : 3;
            ViewBag.Cate = cate;
            ViewBag.Tags = db.Tags.Take(20).ToList();

            return View();
        }

        [Localization]
        public ActionResult SearchNews()
        {
            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.Where(x => x.LangId == ATICurrentSession.GetLang).FirstOrDefault();
            ViewBag.Cart = Cart;
            ViewBag.Partners = db.Partners.Where(x => x.LangId == ATICurrentSession.GetLang).ToList();

            //ViewBag.TopNews = db.News.OrderByDescending(item => item.PostTime).Take(3).ToList();
            AddLog(HttpContext.Session.SessionID);

            var pageIndex = string.IsNullOrEmpty(Request.Params["p"]) ? 1 : Convert.ToInt32(Request.Params["p"]);
            var recordPerPage = string.IsNullOrEmpty(Request.Params["r"]) ? 10 : Convert.ToInt32(Request.Params["r"]);
            var key = string.IsNullOrEmpty(Request.Params["k"]) ? "" : Request.Params["k"];

            var keywordArray = Common.UCS2Convert(key).ToLower().Split(' ');

            var keyword = string.Empty;

            foreach (var item in keywordArray)
            {
                if (string.IsNullOrEmpty(item))
                {
                    continue;
                }

                keyword += keyword.Equals(string.Empty) ? "\"" + item + "*\"" + "" : " AND \"" + item + "*\"";
            }

            var output = new ObjectParameter("TotalRecord", typeof(int));
            ViewBag.News = db.sp_News_SearchByTitle(ATICurrentSession.GetLang, -1, 0, keyword, pageIndex, recordPerPage, output).ToList();
            ViewBag.totalRecord = output.Value;
            ViewBag.CurrPage = pageIndex;
            ViewBag.Key = key;
            ViewBag.Tags = db.Tags.Take(20).ToList();
            ViewBag.ModuleId = 3;

            return View();
        }

        [Localization]
        public ActionResult Tags(string seoLink)
        {
            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.Where(x => x.LangId == ATICurrentSession.GetLang).FirstOrDefault();
            ViewBag.Cart = Cart;
            ViewBag.Partners = db.Partners.Where(x => x.LangId == ATICurrentSession.GetLang).ToList();

            //ViewBag.TopNews = db.News.OrderByDescending(item => item.PostTime).Take(3).ToList();
            AddLog(HttpContext.Session.SessionID);

            var pageIndex = string.IsNullOrEmpty(Request.Params["p"]) ? 1 : Convert.ToInt32(Request.Params["p"]);
            var recordPerPage = string.IsNullOrEmpty(Request.Params["r"]) ? 10 : Convert.ToInt32(Request.Params["r"]);

            var tag = db.Tags.FirstOrDefault(item => item.SeoLink.ToLower().Equals(seoLink.ToLower()));

            if (tag == null)
            {
                return View("FileNotFound");
            }

            var keywordArray = tag.Name.Split(' ');

            var keyword = string.Empty;

            foreach (var item in keywordArray)
            {
                if (string.IsNullOrEmpty(item))
                {
                    continue;
                }

                keyword += keyword.Equals(string.Empty) ? "\"" + item + "*\"" + "" : " AND \"" + item + "*\"";
            }

            var output = new ObjectParameter("TotalRecord", typeof(int));
            //ViewBag.Products = db.ProductGetByTags(keyword, pageIndex, recordPerPage, output).ToList();
            ViewBag.totalRecord = output.Value;
            ViewBag.CurrPage = pageIndex;
            ViewBag.Tags = db.Tags.Take(20).ToList();
            ViewBag.ModuleId = 2;
            ViewBag.Tag = tag;

            return View();
        }

        [Localization]
        public ActionResult NewsDetail(string seolink)
        {
            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.Where(x => x.LangId == ATICurrentSession.GetLang).FirstOrDefault();
            ViewBag.Cart = Cart;
            ViewBag.Partners = db.Partners.Where(x => x.LangId == ATICurrentSession.GetLang).ToList();
            AddLog(HttpContext.Session.SessionID);

            var news = db.News.Where(x => x.LangId == ATICurrentSession.GetLang).FirstOrDefault(item => item.SeoLink.Equals(seolink.ToLower()) && item.Status == 1);

            if (news == null)
            {
                return View("FileNotFound");
            }

            ViewBag.News = news;
            ViewBag.ModuleId = 3;
            ViewBag.Tags = db.Tags.Take(20).ToList();
            var cate = db.CateNews.FirstOrDefault(item => item.ID == news.CateId && item.Type == 0);
            ViewBag.TopNews = db.News.Where(m => m.Status == 1 && m.CateId == cate.ID && m.ID != news.ID).ToList();
            ViewBag.CateSolutionOther = db.CateNews.Where(m => m.ID != cate.ID && m.Type == 0).ToList();

            return View();
        }

        [Localization]
        public ActionResult Contact()
        {
            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.Where(x => x.LangId == ATICurrentSession.GetLang).FirstOrDefault();
            ViewBag.Cart = Cart;
            ViewBag.Partners = db.Partners.Where(x => x.LangId == ATICurrentSession.GetLang).ToList();
            //ViewBag.CateProducts = db.CateProducts.ToList();
            //ViewBag.TopNews = db.News.OrderByDescending(item => item.PostTime).Take(3).ToList();

            AddLog(HttpContext.Session.SessionID);

            ViewBag.ModuleId = 6;

            return View();
        }

        [Localization]
        public ActionResult AgencyPolicy()
        {
            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.Where(x => x.LangId == ATICurrentSession.GetLang).FirstOrDefault();
            ViewBag.Cart = Cart;

            ViewBag.Partners = db.Partners.Where(x => x.LangId == ATICurrentSession.GetLang).ToList();
            //ViewBag.CateProducts = db.CateProducts.ToList();
            //ViewBag.TopNews = db.News.OrderByDescending(item => item.PostTime).Take(3).ToList();

            AddLog(HttpContext.Session.SessionID);

            ViewBag.ModuleId = 4;

            return View();
        }

        [Localization]
        public ActionResult RegisAgency()
        {
            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.Where(x => x.LangId == ATICurrentSession.GetLang).FirstOrDefault();
            ViewBag.Cart = Cart;
            ViewBag.Partners = db.Partners.Where(x => x.LangId == ATICurrentSession.GetLang).ToList();
            //ViewBag.CateProducts = db.CateProducts.ToList();
            //ViewBag.TopNews = db.News.OrderByDescending(item => item.PostTime).Take(3).ToList();

            AddLog(HttpContext.Session.SessionID);

            ViewBag.ModuleId = 4;

            return View();
        }

        [Localization]
        public ActionResult ShoppingCart()
        {
            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.Where(x => x.LangId == ATICurrentSession.GetLang).FirstOrDefault();
            ViewBag.Cart = Cart;
            ViewBag.Partners = db.Partners.Where(x => x.LangId == ATICurrentSession.GetLang).ToList();
            //ViewBag.CateProducts = db.CateProducts.ToList();
            //ViewBag.TopNews = db.News.OrderByDescending(item => item.PostTime).Take(3).ToList();

            AddLog(HttpContext.Session.SessionID);

            return View();
        }

        [Localization]
        public ActionResult Login()
        {
            var url = Request.Params["u"];

            if (CurrentUser != null)
            {
                return new RedirectResult(string.IsNullOrEmpty(url) ? "/" : url);
            }

            ViewBag.Url = url;
            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.Where(x => x.LangId == ATICurrentSession.GetLang).FirstOrDefault();
            ViewBag.TopNews = db.News.OrderByDescending(item => item.PostTime).Take(3).ToList();
            //ViewBag.CateProducts = db.CateProducts.ToList();
            ViewBag.Partners = db.Partners.Where(x => x.LangId == ATICurrentSession.GetLang).ToList();

            AddLog(HttpContext.Session.SessionID);

            ViewBag.ModuleId = 1;

            return View();
        }

        public ActionResult Logout()
        {
            Session.RemoveAll();
            Session.Clear();
            Session.Abandon();
            if (Request.Cookies["_code"] != null)
            {
                HttpCookie code = new HttpCookie("_code");
                code.Expires = DateTime.Now.AddDays(-1d);
                Response.Cookies.Add(code);
            }

            if (Request.Cookies["_emm"] != null)
            {
                HttpCookie pass = new HttpCookie("_emm");
                pass.Expires = DateTime.Now.AddDays(-1d);
                Response.Cookies.Add(pass);
            }

            return new RedirectResult("/");
        }

        public ActionResult Solutions(string seolink)
        {
            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.Where(x => x.LangId == ATICurrentSession.GetLang).FirstOrDefault();
            ViewBag.Cart = Cart;
            AddLog(HttpContext.Session.SessionID);

            var cate = db.CateNews.FirstOrDefault(item => item.SeoLink.ToLower().Equals(seolink.ToLower()) && item.Type == 1);

            if (cate == null)
            {
                return View("FileNotFound");
            }

            ViewBag.Cate = cate;

            ViewBag.Solutions = db.News.Where(m => m.CateId == cate.ID && m.Status == 1).ToList();

            return View();
        }

        public ActionResult SolutionDetail(string seolink)
        {
            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.Where(x => x.LangId == ATICurrentSession.GetLang).FirstOrDefault();
            AddLog(HttpContext.Session.SessionID);

            var news = db.News.Where(x => x.LangId == ATICurrentSession.GetLang).FirstOrDefault(item => item.SeoLink.Equals(seolink.ToLower()) && item.Status == 1);

            if (news == null)
            {
                return View("FileNotFound");
            }

            ViewBag.News = news;
            ViewBag.ModuleId = 3;
            var cate = db.CateNews.FirstOrDefault(item => item.ID == news.CateId && item.Type == 1);
            ViewBag.TopNews = db.News.Where(m => m.Status == 1 && m.CateId == cate.ID && m.ID != news.ID && m.Type == 1).ToList();
            ViewBag.CateSolutionOther = db.CateNews.Where(m => m.ID != cate.ID && m.Type == 1).ToList();

            return View();
        }

        #region
        public JsonResult SendContact(string name, string type, string mobile, string email, string title, string message, string company, string address)
        {
            var contact = new ATI.Web.Models.Contact
            {
                ID = 1,
                Name = name,
                Title = title,
                Type = type,
                Email = email,
                Mobile = mobile,
                Content = message,
                Company = company,
                SendTime = DateTime.Now,
                Status = 0,
                Address = address,
            };

            db.Contacts.Add(contact);

            //try
            //{
            int rs = db.SaveChanges();

            if (rs > 0)
            {
                string customerMessage = "<h3>Chào " + (string.IsNullOrEmpty(name) ? email : name) + ",</h3><p>Cảm ơn bạn đã liên hệ quan tâm đến các dịch vụ của VietHanEttsc. Chúng tôi sẽ xem thông tin liên hệ của bạn và sẽ có phản hồi sớm nhất tới bạn</p>";
                Common.SendMail(email, string.Empty, "Cảm ơn bạn đã liên hệ quan tâm đến các dịch vụ của VietHanEttsc", customerMessage);

                string message1 = @"Khách hàng " + (string.IsNullOrEmpty(name) ? email : name) + ", đơn vị " + company + ", số điện thoại " + mobile + ", email " + email + ("liên hệ quan tâm sản phẩm của VietHanEttsc") + "<br><strong>Với nội dung liên hệ: </strong> " + message;
                Common.SendMail(ConfigurationManager.AppSettings["SendNotityEmailto"], string.Empty, name + " " + company + " liên hệ ", message1);
            }

            return Json(rs, JsonRequestBehavior.AllowGet);
            //}
            //catch (DbEntityValidationException e)
            //{
            //    StringBuilder sb = new StringBuilder();
            //    foreach (var eve in e.EntityValidationErrors)
            //    {
            //        sb.AppendLine(string.Format("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
            //            eve.Entry.Entity.GetType().Name, eve.Entry.State));

            //        foreach (var ve in eve.ValidationErrors)
            //        {
            //            sb.AppendLine(string.Format("- Property: \"{0}\", Error: \"{1}\"", ve.PropertyName, ve.ErrorMessage));
            //        }
            //    }

            //    return Json(-3, JsonRequestBehavior.AllowGet);
            //}
        }

        public JsonResult DoLogin(string userName, string password)
        {
            try
            {
                if (HttpContext.Session == null)
                {
                    return Json(-1, JsonRequestBehavior.AllowGet);
                }

                var user = db.Users.FirstOrDefault(item => item.UserName.ToLower().Equals(userName.ToLower()));

                if (user == null)
                {
                    return Json(-2, JsonRequestBehavior.AllowGet);
                }

                if (!Common.MD5Endcoding(user.Password).ToLower().Equals(password))
                {
                    return Json(-3, JsonRequestBehavior.AllowGet);
                }

                CurrentUser = new BriefUser
                {
                    Id = user.ID,
                    UserName = user.UserName,
                    FullName = user.FullName,
                    Image = user.Image
                };

                return Json(1, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(-4, JsonRequestBehavior.AllowGet);
            }
        }

        public JsonResult AddShoppingCart(int id, short quantity)
        {
            var product = db.Products.FirstOrDefault(item => item.ID == id && !item.IsDelete && item.Status == 1);

            if (product == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            if (Cart == null)
            {
                var cartItem = new Item
                {
                    ID = product.ID,
                    Name = product.Name,
                    SeoLink = product.SeoLink,
                    Image = product.Image.Split(',')[0],
                    Quantity = quantity,
                };

                var items = new List<Item>();
                items.Add(cartItem);

                Cart = new ShoppingCart { IP = Common.ClientIP, FullName = string.Empty, Address = string.Empty, Mobile = string.Empty, OrderTotal = 0, Items = items };
            }
            else
            {
                var same = false;
                foreach (var item in Cart.Items)
                {
                    if (item.ID == product.ID)
                    {
                        item.Quantity += quantity;
                        same = true;
                        break;
                    }
                }

                if (!same)
                {
                    var cartItem = new Item
                    {
                        ID = product.ID,
                        Name = product.Name,
                        SeoLink = product.SeoLink,
                        Image = product.Image.Split(',')[0],
                        Quantity = quantity,
                    };

                    var items = new List<Item>();
                    items.Add(cartItem);

                    Cart.Items.Add(cartItem);
                }
            }

            return Json(Cart.Items.Count, JsonRequestBehavior.AllowGet);
        }

        public JsonResult IncreaseCart(int id, short quantity)
        {
            foreach (var item in Cart.Items)
            {
                if (item.ID == id)
                {
                    item.Quantity = quantity;
                    break;
                }
            }

            return Json(1, JsonRequestBehavior.AllowGet);
        }

        public JsonResult RemoveItemInCart(int id)
        {
            if (Cart == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            foreach (var item in Cart.Items)
            {
                if (item.ID == id)
                {
                    Cart.Items.Remove(item);
                    break;
                }
            }

            return Json(Cart.Items.Count, JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetCartItem()
        {
            return Json(Cart, JsonRequestBehavior.AllowGet);
        }

        public JsonResult SaveShoppingCart(string fullName, string mobile, string address)
        {
            if (Cart == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            double total = 0;
            //foreach (var item in Cart.Items)
            //{
            //    total = (item.Price - item.SaleOff) * item.Quantity;
            //}

            db.Orders.Add(new Models.Order
            {
                FullName = fullName,
                Address = address,
                IP = Common.ClientIP,
                Mobile = mobile,
                OrderTime = DateTime.Now,
                OrderTotal = total,
                ID = 1,
                Status = 0,
                Items = JsonConvert.SerializeObject(Cart.Items)
            });

            Cart = null;
            return Json(db.SaveChanges(), JsonRequestBehavior.AllowGet);
        }
        #endregion

        #region Changing language
        public ActionResult ChangeLanguage(string Id)
        {
            var defaultLanguage = 0;

            if (Id == "ko")
                defaultLanguage = 1;

            ATICurrentSession.SetLang(defaultLanguage);

            ATIResourceManger.SetLanguage(Id == "ko" ? "ko-KR" : "vi-VN");

            return RedirectToAction("Index");
        }
        #endregion

        public ActionResult MainMenu()
        {
            ViewBag.CategoryProducts = db.CateProducts.Where(m => !m.IsDelete && m.ParrentCateId == -1).ToList();
            ViewBag.CateNews = db.CateNews.Where(m => m.Type == 0).ToList();
            ViewBag.CateSolutions = db.CateNews.Where(m => m.Type == 1).ToList();
            ViewBag.Introduces = db.Introduces.ToList().Select(m => new Introduce
            {
                ID = m.ID,
                Title = m.Title,
                SeoLink = m.SeoLink
            }).ToList();

            return PartialView();
        }

        public ActionResult Sponsors()
        {
            ViewBag.Sponsors = db.CustomerSays.ToList();

            return PartialView();
        }
    }

    public class ShoppingCart
    {
        public string IP { get; set; }
        public string FullName { get; set; }
        public string Address { get; set; }
        public string Mobile { get; set; }
        public double OrderTotal { get; set; }

        public List<Item> Items { get; set; }
    }

    public class Item
    {
        public int ID { get; set; }

        public string Name { get; set; }

        public string SeoLink { get; set; }

        //public double Price { get; set; }
        //public double SaleOff { get; set; }

        public short Quantity { get; set; }

        public string Image { get; set; }
    }
}