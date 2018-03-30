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
            var lang = ATICurrentSession.GetLang;
            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.Where(x => x.LangId == lang).FirstOrDefault();
            ViewBag.TopNews = db.News.Where(item => item.Type == 0 && item.LangId == lang).OrderByDescending(item => item.ID).Take(3).ToList();
            ViewBag.Services = db.Partners.Where(m => m.LangId == 0 && m.LangId == lang && m.IsShowHomePage == true).OrderBy(m => m.OrderNo).ToList();
            AddLog(HttpContext.Session.SessionID);
            var categories = db.CateProducts.Where(m => !m.IsDelete && m.LangId == lang && m.ParrentCateId == -1 && m.IsShowHomePage == true).Select(m => new CategoryItems
            {
                CateId = m.ID,
                CategoryName = m.Name
            }).ToList();

            var listProduct = new List<ProductItems>();

            foreach (var item in categories)
            {
                var cateChildIds = new List<int>();
                var cateId = item.CateId;
                var cateChilds = db.CateProducts.Where(m => m.ParrentCateId == cateId && !m.IsDelete).ToList();
                var cateChildIds1 = cateChilds.Select(m => m.ID).ToList();
                cateChildIds.AddRange(cateChildIds1);

                foreach (var item1 in cateChildIds1)
                {
                    var cateChilds1 = db.CateProducts.Where(m => m.ParrentCateId == item1 && !m.IsDelete);

                    if (cateChilds1 != null && cateChilds1.Count() > 0)
                    {
                        cateChildIds.AddRange(cateChilds1.Select(m => m.ID));
                    }
                }

                cateChildIds.Add(cateId);

                var products = db.Products.Where(m => !m.IsDelete && m.LangId == lang && m.IsShowHomePage == true && m.Status == 1 && cateChildIds.Contains(m.CateId)).Select(m => new ProductItems
                {
                    Id = m.ID,
                    Name = m.Name,
                    Image = m.Image,
                    SeoLink = m.SeoLink,
                    CategoryName = item.CategoryName,
                    CateId = cateId
                }).ToList();

                listProduct.AddRange(products);
            }

            var categoryAndProductViewModel = new CategoryAndProductViewModel()
            {
                Categories = categories,
                Products = listProduct
            };

            ViewBag.Solutions = db.News.Where(item => item.Status == 1 && item.IsShowHomePage == true && item.LangId == lang).OrderByDescending(m => m.ID).ToList();
            ViewBag.AboutHomePage = db.Introduces.Where(m => m.IsShowHomePage == true && m.LangId == lang).OrderByDescending(m => m.LastUpdateTime).FirstOrDefault();
            ViewBag.ListCateAndProduct = categoryAndProductViewModel;
            ViewBag.ListSlide = db.ConfigImages.Where(m => m.Status == 1 && m.LangId == lang).ToList();

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

            ViewBag.IntroduceOther = db.Introduces.Where(m => m.ID != introduce.ID && m.LangId == ATICurrentSession.GetLang && m.IsShowHomePage == false).ToList();
            ViewBag.Content = introduce;

            return View();
        }

        [Localization]
        public ActionResult Product(string seolink, int? page)
        {
            ViewBag.Context = HttpContext;
            var langId = ATICurrentSession.GetLang;
            ViewBag.CommonInfo = db.CommonInfoes.Where(x => x.LangId == langId).FirstOrDefault();
            AddLog(HttpContext.Session.SessionID);
            var currentCate = db.CateProducts.FirstOrDefault(item => item.SeoLink.Equals(seolink.ToLower()) && item.LangId == langId);

            if (currentCate == null)
            {
                return View("FileNotFound");
            }

            ViewBag.Cate = currentCate;
            var cateChilds = db.CateProducts.Where(m => !m.IsDelete && m.ParrentCateId == currentCate.ID && m.LangId == langId).ToList();

            var products = new PagerViewModel<Product>();

            if (cateChilds != null && cateChilds.Count() > 0)
            {
                var cateChildsSearch = new List<int>();
                var cateChildIds = cateChilds.Select(m => m.ID).ToList();
                cateChildsSearch.AddRange(cateChildIds);

                foreach (var item in cateChildIds)
                {
                    var cateChilds1 = db.CateProducts.Where(m => !m.IsDelete && m.ParrentCateId == item && m.LangId == langId).ToList();

                    if (cateChilds1 != null && cateChilds1.Count() > 0)
                    {
                        cateChildsSearch.AddRange(cateChilds1.Select(m => m.ID));
                    }
                }

                cateChildsSearch.Add(currentCate.ID);
                var items = db.Products.Where(m => !m.IsDelete && m.LangId == langId && m.Status == 1 && cateChildsSearch.Contains(m.CateId));
                var pager = new Pager(items.Count(), page);
                products.Items = items.OrderBy(m => m.OrderNo).Skip((pager.CurrentPage - 1) * pager.PageSize).Take(pager.PageSize);
                products.Pager = new Pager(items.Count(), page);
            }
            else
            {
                var items = db.Products.Where(m => !m.IsDelete && m.LangId == langId && m.Status == 1 && m.CateId == currentCate.ID);
                var pager = new Pager(items.Count(), page);
                products.Items = items.OrderBy(m => m.OrderNo).Skip((pager.CurrentPage - 1) * pager.PageSize).Take(pager.PageSize);
                products.Pager = new Pager(items.Count(), page);
            }

            return View(products);
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
            var langId = ATICurrentSession.GetLang;
            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.FirstOrDefault(c => c.LangId == langId);
            ViewBag.Cart = Cart;
            ViewBag.Partners = db.Partners.Where(x => x.LangId == langId).ToList();
            AddLog(HttpContext.Session.SessionID);
            var product = db.Products.Where(x => x.LangId == langId).FirstOrDefault(item => item.SeoLink.Equals(seolink.ToLower()) && !item.IsDelete && item.Status == 1);

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

            return View();
        }

        [Localization]
        public ActionResult SearchProduct(string key, int? page)
        {
            ViewBag.Context = HttpContext;
            var langId = ATICurrentSession.GetLang;
            ViewBag.CommonInfo = db.CommonInfoes.FirstOrDefault(c => c.LangId == langId);
            AddLog(HttpContext.Session.SessionID);

            key = Common.UCS2Convert(key).ToLower();
            var listProducts = new List<Product>();

            if (string.IsNullOrEmpty(key))
            {
                listProducts = new List<Product>();
            }
            else
            {
                listProducts = db.Products.Where(m => m.UnsignName.Contains(key) && m.Status == 1 && m.LangId == langId && !m.IsDelete).ToList();
            }

            var pager = new Pager(listProducts.Count(), page);

            var viewModel = new PagerViewModel<Product>
            {
                Items = listProducts.OrderBy(m => m.OrderNo).Skip((pager.CurrentPage - 1) * pager.PageSize).Take(pager.PageSize).ToList(),
                Pager = pager
            };

            return View(viewModel);
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
            AddLog(HttpContext.Session.SessionID);
            var agency = db.Agencies.Where(x => x.LangId == ATICurrentSession.GetLang).FirstOrDefault(item => item.SeoLink.ToLower().Equals(seoLink.ToLower()) && item.Status == 1);

            agency.ViewNo += 1;
            db.SaveChanges();

            ViewBag.Agency = agency;
            ViewBag.ModuleId = 4;

            return View();
        }

        [Localization]
        public ActionResult Service(int? page)
        {
            ViewBag.Context = HttpContext;
            var lang = ATICurrentSession.GetLang;
            ViewBag.CommonInfo = db.CommonInfoes.Where(x => x.LangId == lang).FirstOrDefault();
            AddLog(HttpContext.Session.SessionID);

            var viewModel = new PagerViewModel<Partner>();
            var items = db.Partners.Where(x => x.LangId == lang);
            var pager = new Pager(items.Count(), page);
            viewModel.Items = items.OrderBy(m => m.OrderNo).Skip((pager.CurrentPage - 1) * pager.PageSize).Take(pager.PageSize);
            viewModel.Pager = new Pager(items.Count(), page);

            return View(viewModel);
        }

        [Localization]
        public ActionResult ProjectDetail(string seolink)
        {
            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.Where(x => x.LangId == ATICurrentSession.GetLang).FirstOrDefault();
            ViewBag.Cart = Cart;
            ViewBag.Partners = db.Partners.Where(x => x.LangId == ATICurrentSession.GetLang).ToList();
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
        public ActionResult News(string seolink, int? page)
        {
            var lang = ATICurrentSession.GetLang;
            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.Where(x => x.LangId == lang).FirstOrDefault();
            ViewBag.Partners = db.Partners.Where(x => x.LangId == lang).ToList();
            AddLog(HttpContext.Session.SessionID);

            var cate = db.CateNews.FirstOrDefault(item => item.SeoLink.ToLower().Equals(seolink.ToLower()) && item.Type == 0);

            if (cate == null)
            {
                return View("FileNotFound");
            }

            var viewModel = new PagerViewModel<News>();
            var items = db.News.Where(m => m.LangId == lang && m.Type == 0 && m.CateId == cate.ID && m.Status == 1);
            var pager = new Pager(items.Count(), page);
            viewModel.Items = items.OrderByDescending(m => m.ID).Skip((pager.CurrentPage - 1) * pager.PageSize).Take(pager.PageSize);
            viewModel.Pager = new Pager(items.Count(), page);
            ViewBag.Cate = cate;

            return View(viewModel);
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

            var items = db.News.Where(m => m.LangId == ATICurrentSession.GetLang && m.Type == 0 && (string.IsNullOrEmpty(keyword) || m.UnsignTitle.Contains(keyword))).ToList();
            var result = items.OrderByDescending(m => m.ID).Skip((pageIndex - 1) * recordPerPage).Take(recordPerPage);
            ViewBag.News = result.ToList();
            ViewBag.totalRecord = items.Count();
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
            var langId = ATICurrentSession.GetLang;
            ViewBag.CommonInfo = db.CommonInfoes.Where(x => x.LangId == langId).FirstOrDefault();
            ViewBag.Cart = Cart;
            ViewBag.Partners = db.Partners.Where(x => x.LangId == langId).ToList();
            AddLog(HttpContext.Session.SessionID);

            var news = db.News.FirstOrDefault(item => item.SeoLink.Equals(seolink.ToLower()) && item.Status == 1 && item.LangId == langId);

            if (news == null)
            {
                return View("FileNotFound");
            }

            ViewBag.News = news;
            ViewBag.ModuleId = 3;
            ViewBag.Tags = db.Tags.Take(20).ToList();
            var cate = db.CateNews.FirstOrDefault(item => item.ID == news.CateId && item.Type == 0);
            ViewBag.TopNews = db.News.Where(m => m.Status == 1 && m.CateId == cate.ID && m.ID != news.ID && m.Type == 0).ToList();
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

        public ActionResult Solutions(string seolink, int? page)
        {
            ViewBag.Context = HttpContext;
            var langId = ATICurrentSession.GetLang;
            ViewBag.CommonInfo = db.CommonInfoes.Where(x => x.LangId == langId).FirstOrDefault();
            AddLog(HttpContext.Session.SessionID);
            var cate = db.CateNews.FirstOrDefault(item => item.SeoLink.ToLower().Equals(seolink.ToLower()) && item.LangId == langId && item.Type == 1);

            if (cate == null)
            {
                return View("FileNotFound");
            }

            var viewModel = new PagerViewModel<News>();
            var items = db.News.Where(m => m.CateId == cate.ID && m.LangId == langId && m.Status == 1);
            var pager = new Pager(items.Count(), page);
            viewModel.Items = items.OrderByDescending(m => m.ID).Skip((pager.CurrentPage - 1) * pager.PageSize).Take(pager.PageSize);
            viewModel.Pager = new Pager(items.Count(), page);
            ViewBag.Cate = cate;

            return View(viewModel);
        }

        public ActionResult SolutionDetail(string seolink)
        {
            ViewBag.Context = HttpContext;
            var langID = ATICurrentSession.GetLang;
            ViewBag.CommonInfo = db.CommonInfoes.Where(x => x.LangId == langID).FirstOrDefault();
            AddLog(HttpContext.Session.SessionID);

            var news = db.News.FirstOrDefault(item => item.SeoLink.Equals(seolink.ToLower()) && item.Status == 1 && item.LangId == langID);

            if (news == null)
            {
                return View("FileNotFound");
            }

            ViewBag.News = news;
            var cate = db.CateNews.FirstOrDefault(item => item.ID == news.CateId && item.Type == 1);
            ViewBag.TopNews = db.News.Where(m => m.Status == 1 && m.CateId == cate.ID && m.ID != news.ID && m.Type == 1).ToList();
            ViewBag.CateSolutionOther = db.CateNews.Where(m => m.ID != cate.ID && m.Type == 1).ToList();

            return View();
        }

        #region
        public JsonResult SendContact(string name, string type, string mobile, string email, string title, string message, string company, string address)
        {
            var contact = new Contact
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
                UnsignName = Common.UCS2Convert(string.Concat(name, "", email, " ", mobile)).ToLower()
            };

            db.Contacts.Add(contact);

            int rs = db.SaveChanges();

            if (rs > 0)
            {
                string customerMessage = "<h3>Chào " + (string.IsNullOrEmpty(name) ? email : name) + ",</h3><p>Cảm ơn bạn đã liên hệ quan tâm đến các dịch vụ của VietHanEttsc. Chúng tôi sẽ xem thông tin liên hệ của bạn và sẽ có phản hồi sớm nhất tới bạn</p>";
                Common.SendMail(email, string.Empty, "Cảm ơn bạn đã liên hệ quan tâm đến các dịch vụ của VietHanEttsc", customerMessage);
                string message1 = @"Khách hàng " + (string.IsNullOrEmpty(name) ? email : name) + ", đơn vị " + company + ", số điện thoại " + mobile + ", email " + email + ("liên hệ quan tâm sản phẩm của VietHanEttsc") + "<br><strong>Với nội dung liên hệ: </strong> " + message;
                Common.SendMail(ConfigurationManager.AppSettings["SendNotityEmailto"], string.Empty, name + " " + company + " liên hệ ", message1);
            }

            return Json(rs, JsonRequestBehavior.AllowGet);
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

            db.Orders.Add(new Order
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
            //var defaultLanguage = 0;
            //if (Id == "en")
            //    defaultLanguage = 1;

            //ATICurrentSession.SetLang(defaultLanguage);

            //ATIResourceManger.SetLanguage(Id == "en" ? "en-US" : "vi-VN");

            var name = Id == "en" ? "en-US" : "vi-VN";
            var cookie = Request.Cookies["_culture"];

            if (cookie == null)
            {
                cookie = new HttpCookie("_culture", name) { Expires = DateTime.Now.AddYears(10) };
            }
            else
            {
                cookie.Value = name;
            }

            Response.Cookies.Add(cookie);

            return RedirectToAction("Index");
        }
        #endregion

        public ActionResult MainMenu()
        {
            var lang = ATICurrentSession.GetLang;
            ViewBag.CategoryProducts = db.CateProducts.Where(m => !m.IsDelete && m.LangId == lang && m.ParrentCateId == -1).ToList();
            ViewBag.CateNews = db.CateNews.Where(m => m.Type == 0 && m.LangId == lang).ToList();
            ViewBag.CateSolutions = db.CateNews.Where(m => m.Type == 1 && m.LangId == lang).ToList();
            ViewBag.Introduces = db.Introduces.Where(m => m.IsShowHomePage == false && m.LangId == lang).ToList().Select(m => new Introduce
            {
                ID = m.ID,
                Title = m.Title,
                SeoLink = m.SeoLink
            }).ToList();

            return PartialView();
        }

        public ActionResult Sponsors()
        {
            ViewBag.Sponsors = db.CustomerSays.Where(m => m.LangId == ATICurrentSession.GetLang).ToList();

            return PartialView();
        }

        public ActionResult Footer()
        {
            var lang = ATICurrentSession.GetLang;

            ViewBag.CommonInfo = db.CommonInfoes.Where(x => x.LangId == lang).FirstOrDefault();
            ViewBag.CateNews = db.CateNews.Where(m => m.Type == 0 && m.LangId == lang).ToList();
            ViewBag.Introduces = db.Introduces.Where(m => m.IsShowHomePage == false && m.LangId == lang).ToList().Select(m => new Introduce
            {
                ID = m.ID,
                Title = m.Title,
                SeoLink = m.SeoLink
            }).ToList();

            return PartialView();
        }

        public ActionResult CategoriesSidebar()
        {
            ViewBag.Categories = db.CateProducts.Where(m => !m.IsDelete && m.ParrentCateId == -1 && m.LangId == ATICurrentSession.GetLang).OrderBy(m => m.OrderNo).ToList();

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