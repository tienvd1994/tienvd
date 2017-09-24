using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Objects;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ATI.Web.Models;
using ATI.Web.Helper;
using System.Data.Entity;

namespace ATI.Web.Controllers
{
    public class CMSController : BaseController
    {
        [Localization]
        public ActionResult CommonInfo()
        {
            if (CurrentUser == null)
            {
                return new RedirectResult("/dang-nhap?u=" + Request.Url.PathAndQuery);
            }

            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.FirstOrDefault();
            ViewBag.ModuleId = 2;

            return View();
        }

        [Localization]
        public ActionResult Introduce()
        {
            if (CurrentUser == null)
            {
                return new RedirectResult("/dang-nhap?u=" + Request.Url.PathAndQuery);
            }

            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.FirstOrDefault();
            ViewBag.ModuleId = 2;

            return View();
        }

        [Localization]
        public ActionResult Product()
        {
            if (CurrentUser == null)
            {
                return new RedirectResult("/dang-nhap?u=" + Request.Url.PathAndQuery);
            }

            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.FirstOrDefault();

            ViewBag.ModuleId = 3;

            return View();
        }

        [Localization]
        public ActionResult Service()
        {
            if (CurrentUser == null)
            {
                return new RedirectResult("/dang-nhap?u=" + Request.Url.PathAndQuery);
            }

            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.FirstOrDefault();

            ViewBag.ModuleId = 4;

            return View();
        }

        [Localization]
        public ActionResult Project()
        {
            if (CurrentUser == null)
            {
                return new RedirectResult("/dang-nhap?u=" + Request.Url.PathAndQuery);
            }

            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.FirstOrDefault();
            ViewBag.ProjectCount = db.Contractors.Count();
            ViewBag.ModuleId = 5;

            return View();
        }

        [Localization]
        public ActionResult Customer()
        {
            if (CurrentUser == null)
            {
                return new RedirectResult("/dang-nhap?u=" + Request.Url.PathAndQuery);
            }

            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.FirstOrDefault();

            ViewBag.ModuleId = 5;

            return View();
        }

        [Localization]
        public ActionResult CustomerSay()
        {
            if (CurrentUser == null)
            {
                return new RedirectResult("/dang-nhap?u=" + Request.Url.PathAndQuery);
            }

            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.FirstOrDefault();

            ViewBag.ModuleId = 7;

            return View();
        }

        [Localization]
        public ActionResult News()
        {
            if (CurrentUser == null)
            {
                return new RedirectResult("/dang-nhap?u=" + Request.Url.PathAndQuery);
            }

            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.FirstOrDefault();
            ViewBag.ProjectCount = db.Contractors.Count();
            ViewBag.ModuleId = 6;
            ViewBag.CateNews = db.CateNews.Where(m => m.Type == 0).ToList();

            return View();
        }

        [Localization]
        public ActionResult Contact()
        {
            if (CurrentUser == null)
            {
                return new RedirectResult("/dang-nhap?u=" + Request.Url.PathAndQuery);
            }

            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.FirstOrDefault();

            ViewBag.ModuleId = 7;

            return View();
        }

        [Localization]
        public ActionResult Agency()
        {
            if (CurrentUser == null)
            {
                return new RedirectResult("/dang-nhap?u=" + Request.Url.PathAndQuery);
            }

            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.FirstOrDefault();
            ViewBag.Provinces = db.Provinces.ToList();
            ViewBag.ModuleId = 9;

            return View();
        }

        [Localization]
        public ActionResult Tracker()
        {
            if (CurrentUser == null)
            {
                return new RedirectResult("/dang-nhap?u=" + Request.Url.PathAndQuery);
            }

            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.FirstOrDefault();

            ViewBag.ModuleId = 7;

            return View();
        }

        [Localization]
        public ActionResult UserManger()
        {
            if (CurrentUser == null)
            {
                return new RedirectResult("/dang-nhap?u=" + Request.Url.PathAndQuery);
            }

            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.FirstOrDefault();

            ViewBag.ModuleId = 8;

            return View();
        }

        [Localization]
        public ActionResult ChangePassword()
        {
            if (CurrentUser == null)
            {
                return new RedirectResult("/dang-nhap?u=" + Request.Url.PathAndQuery);
            }

            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.FirstOrDefault();

            ViewBag.ModuleId = 8;

            return View();
        }

        [Localization]
        public ActionResult CMS()
        {
            if (CurrentUser == null)
            {
                return new RedirectResult("/dang-nhap?u=" + Request.Url.PathAndQuery);
            }

            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.FirstOrDefault();

            ViewBag.ModuleId = 1;

            return View();
        }

        [Localization]
        public ActionResult Help()
        {
            if (CurrentUser == null)
            {
                return new RedirectResult("/dang-nhap?u=" + Request.Url.PathAndQuery);
            }

            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.FirstOrDefault();

            ViewBag.ModuleId = 1;

            return View();
        }

        [Localization]
        public ActionResult CateProduct()
        {
            if (CurrentUser == null)
            {
                return new RedirectResult("/dang-nhap?u=" + Request.Url.PathAndQuery);
            }

            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.FirstOrDefault();
            ViewBag.CateProducts = db.CateProducts.Where(item => !item.IsDelete).ToList();
            ViewBag.ModuleId = 4;

            return View();
        }

        public JsonResult GetCommonInfo(int langId)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            var commonInfo = db.CommonInfoes.FirstOrDefault(c => c.LangId == langId);

            return Json(commonInfo, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult UpdateCommonInfo(CommonInfoViewModel item)
        {
            try
            {
                if (CurrentUser == null)
                {
                    return Json(-1, JsonRequestBehavior.AllowGet);
                }

                var commonInfo = db.CommonInfoes.FirstOrDefault(c => c.LangId == item.LangId);

                if (commonInfo == null)
                {
                    commonInfo = new CommonInfo();
                    commonInfo.Email = item.Email;
                    commonInfo.Name = item.Name;
                    commonInfo.ShortName = item.ShortName;
                    commonInfo.EnglishName = item.EnglishName;
                    commonInfo.Phone = item.Phone;
                    commonInfo.Mobile = item.Mobile;
                    commonInfo.Fax = item.Fax;
                    commonInfo.HeadOffice = item.HeadOffice;
                    commonInfo.HeadOffice_En = item.HeadOfficeEn;
                    commonInfo.Office = item.Office;
                    commonInfo.Office_En = item.OfficeEn;
                    commonInfo.Yahoo = item.Yahoo;
                    commonInfo.Facebook = item.Facebook;
                    commonInfo.Skype = item.Skype;
                    commonInfo.Summary = item.Summary;
                    commonInfo.LangId = (byte)item.LangId;
                    commonInfo.Summary = item.SummaryEn;
                    commonInfo.Logo = item.Logo;
                    db.CommonInfoes.Add(commonInfo);
                }
                else
                {
                    commonInfo.Email = item.Email;
                    commonInfo.Name = item.Name;
                    commonInfo.ShortName = item.ShortName;
                    commonInfo.EnglishName = item.EnglishName;
                    commonInfo.Phone = item.Phone;
                    commonInfo.Mobile = item.Mobile;
                    commonInfo.Fax = item.Fax;
                    commonInfo.HeadOffice = item.HeadOffice;
                    commonInfo.HeadOffice_En = item.HeadOfficeEn;
                    commonInfo.Office = item.Office;
                    commonInfo.Office_En = item.OfficeEn;
                    commonInfo.Yahoo = item.Yahoo;
                    commonInfo.Facebook = item.Facebook;
                    commonInfo.Skype = item.Skype;
                    commonInfo.Summary = item.Summary;
                    commonInfo.LangId = (byte)item.LangId;
                    commonInfo.Summary = item.SummaryEn;
                    commonInfo.Logo = item.Logo;
                    db.Entry(commonInfo).State = EntityState.Modified;
                }

                return Json(db.SaveChanges(), JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public JsonResult GetIntroduce()
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            return Json(db.Introduces.ToList(), JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetNewList(string langid)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            return Json(db.CateNews.Where(x => x.LangId == (Byte)Common.TransferLang(langid)));
        }

        public JsonResult SearchProduct(short langId, short cateId, string key, int pageIndex, int recordPerPage)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

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

            var items = db.Products.Where(m => !m.IsDelete && m.LangId == langId && (cateId == -1 || m.CateId == cateId) && (string.IsNullOrEmpty(keyword) || m.UnsignName.Contains(keyword)));
            var result = items.OrderByDescending(m => m.OrderNo).Skip((pageIndex - 1) * recordPerPage).Take(recordPerPage);

            return Json(new { items = result, totalRecord = items.Count() }, JsonRequestBehavior.AllowGet);
        }

        [ValidateInput(false)]
        [HttpPost]
        public JsonResult AddProduct(ProductViewModel item)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            var product = db.Products.FirstOrDefault(m => m.Name.Equals(item.Name) && m.IsDelete == false);

            if (product != null)
            {
                return Json(-2, JsonRequestBehavior.AllowGet);
            }

            product = new Product();
            product.Status = item.Status;
            product.Name = item.Name;
            product.CateId = item.CateId;
            product.Customer = item.Customer;
            product.CreateDate = item.CreateDate;
            product.Summary = item.Summary;
            product.Summary_En = item.Summary;
            product.Content = item.Content;
            product.Image = item.Image;
            product.Content_En = item.Content_En;
            product.EnglishName = item.Name;
            product.SeoLink = Common.ConvertToUrlString(item.Name);
            product.SeoLink_En = Common.ConvertToUrlString(item.Name);
            product.UnsignName = Common.UCS2Convert(item.Name);
            product.ViewNo = 0;
            product.OrderNo = 1;
            product.IsDelete = false;
            product.IsHot = item.IsHot;
            product.Tags = item.Tags;
            product.LangId = (Byte)Common.TransferLang(item.LangId);
            db.Products.Add(product);

            return Json(db.SaveChanges(), JsonRequestBehavior.AllowGet);
        }

        [ValidateInput(false)]
        [HttpPost]
        public JsonResult UpdateProduct(ProductViewModel item)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            var product = db.Products.FirstOrDefault(m => m.ID == item.ID && m.IsDelete == false);

            if (product == null)
            {
                return Json(-2, JsonRequestBehavior.AllowGet);
            }

            product.Status = item.Status;
            product.Name = item.Name;
            product.CateId = item.CateId;
            product.Customer = item.Customer;
            product.CreateDate = item.CreateDate;
            product.Summary = item.Summary;
            product.Summary_En = item.Summary;
            product.Content = item.Content;
            product.Image = item.Image;
            product.Content_En = item.Content_En;
            product.EnglishName = item.Name;
            product.SeoLink = Common.ConvertToUrlString(item.Name);
            product.UnsignName = Common.UCS2Convert(item.Name);
            product.IsHot = item.IsHot;
            product.Tags = item.Tags;
            product.LangId = (Byte)Common.TransferLang(item.LangId);

            return Json(db.SaveChanges(), JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult DeleteProduct(int id)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            var product = db.Products.FirstOrDefault(item => item.ID == id && !item.IsDelete);

            if (product == null)
            {
                return Json(-2, JsonRequestBehavior.AllowGet);
            }

            product.IsDelete = true;

            return Json(db.SaveChanges(), JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetServices(short langId)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            return Json(db.Partners.Where(c => c.LangId == langId).ToList(), JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        [ValidateInput(false)]
        public JsonResult AddService(ServiceViewModel item)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            var service = db.Partners.FirstOrDefault(m => m.Name.Equals(item.Name));

            if (service != null)
            {
                return Json(-2, JsonRequestBehavior.AllowGet);
            }

            service = new Partner();
            service.Name = item.Name;
            service.Image = item.Image;
            service.OrderNo = 1;
            service.SeoLink = Common.ConvertToUrlString(item.Name);
            service.EnglishName = item.Name;
            service.SeoLink_En = Common.ConvertToUrlString(item.Name);
            service.Summary = item.Summary;
            service.Summary_En = item.Summary;
            service.ViewNo = 0;
            service.Content = item.Content;
            service.Content_En = item.Content;
            service.LangId = (Byte)(Common.TransferLang(item.LangId));
            service.CreatedUserId = CurrentUser.Id;
            service.CreatedFullname = CurrentUser.FullName;
            service.CreatedDate = DateTime.Now;
            db.Partners.Add(service);

            return Json(db.SaveChanges(), JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        [ValidateInput(false)]
        public JsonResult UpdateService(ServiceViewModel item)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            var service = db.Partners.FirstOrDefault(m => m.ID == item.ID);

            if (service == null)
            {
                return Json(-2, JsonRequestBehavior.AllowGet);
            }

            service.Name = item.Name;
            service.Image = item.Image;
            service.OrderNo = 1;
            service.SeoLink = Common.ConvertToUrlString(item.Name);
            service.EnglishName = item.Name;
            service.SeoLink_En = Common.ConvertToUrlString(item.Name);
            service.Summary = item.Summary;
            service.Summary_En = item.Summary;
            service.ViewNo = 0;
            service.Content = item.Content;
            service.Content_En = item.Content;
            service.LangId = (Byte)Common.TransferLang(item.LangId);
            db.Entry(service).State = EntityState.Modified;

            return Json(db.SaveChanges(), JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult DeleteService(int id)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            var service = db.Partners.FirstOrDefault(item => item.ID == id);

            if (service == null)
            {
                return Json(-2, JsonRequestBehavior.AllowGet);
            }

            db.Partners.Remove(service);

            return Json(db.SaveChanges(), JsonRequestBehavior.AllowGet);
        }

        public JsonResult SearchProjects(short langId, string key, int pageIndex, int recordPerPage)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

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
            //var items = db.ProductGetByName(langId, -1, keyword, pageIndex, recordPerPage, output).ToList();

            return Json(new { items = string.Empty, totalRecord = output.Value }, JsonRequestBehavior.AllowGet);
        }

        [ValidateInput(false)]
        public JsonResult AddProject(string name, string image, string summary, string content, string customer, short orderNo, byte isHot, int langId, string createDate)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            var project = db.Products.FirstOrDefault(item => item.Name.Equals(name) && !item.IsDelete);

            if (project != null)
            {
                return Json(-2, JsonRequestBehavior.AllowGet);
            }

            project = new Product();

            project.ID = 1;
            project.Name = name;
            project.Image = image;
            project.OrderNo = 1;
            project.SeoLink = Common.ConvertToUrlString(name);
            project.EnglishName = name;
            project.SeoLink_En = project.SeoLink;
            project.Summary = summary;
            project.Summary_En = summary;
            project.ViewNo = 0;
            project.Content = content;
            project.Content_En = content;
            project.ViewNo = 0;
            project.IsDelete = false;
            project.Status = 1;
            project.UnsignName = Common.UCS2Convert(name);
            project.OrderNo = orderNo;
            project.IsHot = isHot;
            project.LangId = langId;
            project.Customer = customer;
            project.CreateDate = createDate;

            db.Products.Add(project);

            return Json(db.SaveChanges(), JsonRequestBehavior.AllowGet);
        }

        [ValidateInput(false)]
        public JsonResult UpdateProject(int id, string name, string image, string summary, string content, string customer, short orderNo, byte isHot, string createDate)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            var project = db.Products.FirstOrDefault(item => item.ID == id);

            if (project == null)
            {
                return Json(-2, JsonRequestBehavior.AllowGet);
            }

            project.Name = name;
            project.Image = image;
            project.OrderNo = orderNo;
            project.SeoLink = Common.ConvertToUrlString(name);
            project.EnglishName = name;
            project.SeoLink_En = project.SeoLink;
            project.Summary = summary;
            project.Summary_En = summary;
            project.Content = content;
            project.Content_En = content;
            project.Customer = customer;
            project.UnsignName = Common.UCS2Convert(name);
            project.OrderNo = orderNo;
            project.IsHot = isHot;
            project.CreateDate = createDate;

            return Json(db.SaveChanges(), JsonRequestBehavior.AllowGet);
        }

        public JsonResult DeleteProject(int id, string name)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            var contractor = db.Products.FirstOrDefault(item => item.ID == id);

            if (contractor == null)
            {
                return Json(-2, JsonRequestBehavior.AllowGet);
            }

            db.Products.Remove(contractor);

            return Json(db.SaveChanges(), JsonRequestBehavior.AllowGet);
        }

        public JsonResult SearchNews(int langId, string key, int type, int pageIndex, int recordPerPage)
        {
            var keywordArray = Common.UCS2Convert(key).ToLower();

            var output = new ObjectParameter("TotalRecord", typeof(int));
            var items = db.sp_News_SearchByTitle(langId, -1, type, keywordArray, pageIndex, recordPerPage, output).ToList();

            return Json(new { items, totalRecord = output.Value }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        [ValidateInput(false)]
        public JsonResult AddNews(NewsViewModel item)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            var newsCheck = db.News.FirstOrDefault(m => m.Title.Equals(item.Title));

            if (newsCheck != null)
            {
                return Json(-2, JsonRequestBehavior.AllowGet);
            }

            var cate = db.CateNews.FirstOrDefault(m => m.ID == item.CateId);

            var news = new News();

            news.Title = item.Title;
            news.Title_En = item.Title_En;
            news.Image = item.Image;
            news.SeoLink = Common.ConvertToUrlString(item.Title);
            news.SeoLink_En = Common.ConvertToUrlString(item.Title_En);
            news.Summary = item.Summary;
            news.Summary_En = item.Summary;
            news.ViewNo = 0;
            news.Content = item.Content;
            news.Content_En = item.Content;
            news.PostTime = item.PostTime;
            news.UnsignTitle = Common.UCS2Convert(item.Title);
            news.Status = item.Status;
            news.IsHot = item.IsHot;
            news.CateId = item.CateId;
            news.ViewNo = 0;
            news.Author = item.Author;
            news.LangId = (Byte)Common.TransferLang(item.LangId);
            news.Type = cate.Type;
            news.CreatedUserId = CurrentUser.Id;
            news.CreatedFullname = CurrentUser.FullName;
            news.CreatedTime = DateTime.Now;
            db.News.Add(news);

            return Json(db.SaveChanges(), JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        [ValidateInput(false)]
        public JsonResult UpdateNews(NewsViewModel item)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            var news = db.News.FirstOrDefault(m => m.ID == item.ID);

            if (news == null)
            {
                return Json(-2, JsonRequestBehavior.AllowGet);
            }

            var cate = db.CateNews.FirstOrDefault(m => m.ID == item.CateId);
            news.Title = item.Title;
            news.Title_En = item.Title_En;
            news.Image = item.Image;
            news.SeoLink = Common.ConvertToUrlString(item.Title);
            news.SeoLink_En = Common.ConvertToUrlString(item.Title_En);
            news.Summary = item.Summary;
            news.Summary_En = item.Summary;
            news.Content = item.Content;
            news.Content_En = item.Content;
            news.PostTime = item.PostTime;
            news.UnsignTitle = Common.UCS2Convert(item.Title);
            news.Status = item.Status;
            news.Author = item.Author;
            news.IsHot = item.IsHot;
            news.CateId = item.CateId;
            news.Type = cate.Type;
            news.LangId = (Byte)Common.TransferLang(item.LangId);

            return Json(db.SaveChanges(), JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult DeleteNews(int id)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            var news = db.News.FirstOrDefault(item => item.ID == id);

            if (news == null)
            {
                return Json(-2, JsonRequestBehavior.AllowGet);
            }

            db.News.Remove(news);

            return Json(db.SaveChanges(), JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetContacts(string type, int pageIndex, int recordPerPage)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            var output = new ObjectParameter("TotalRecord", typeof(int));
            var items = db.sp_Contact_GetLastest(type, pageIndex, recordPerPage, output).ToList();

            return Json(new { items = items, totalRecord = output.Value }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult UpdateContactStatus(int id, byte status)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            var contact = db.Contacts.FirstOrDefault(item => item.ID == id);

            if (contact == null)
            {
                return Json(-2, JsonRequestBehavior.AllowGet);
            }

            if (contact.Status == status)
            {
                return Json(1, JsonRequestBehavior.AllowGet);
            }

            contact.Status = status;

            return Json(db.SaveChanges(), JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetTrackers(string ip, int pageIndex, int recordPerPage)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            var output = new ObjectParameter("TotalRecord", typeof(int));
            var items = db.sp_Tracker_GetLastest(ip, pageIndex, recordPerPage, output).ToList();

            return Json(new { items = items, totalRecord = output.Value }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetUsers(int pageIndex, int recordPerPage)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            var output = new ObjectParameter("TotalRecord", typeof(int));
            var items = db.sp_User_GetLastest(pageIndex, recordPerPage, output).ToList();

            return Json(new { items = items, totalRecord = output.Value }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult AddUser(string fullName, string userName, string title, string password, string image, byte status)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            if (db.Users.Count(item => item.UserName.Equals(userName)) > 0)
            {
                return Json(-2, JsonRequestBehavior.AllowGet);
            }

            var user = new User { ID = 1, UserName = userName, FullName = fullName, Title = title, Password = password, Image = image, Status = status, IsDelete = false };

            db.Users.Add(user);

            return Json(db.SaveChanges(), JsonRequestBehavior.AllowGet);
        }

        public JsonResult UpdateUser(int id, string fullName, string userName, string title, string password, string image, byte status)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            if (db.Users.Count(item => item.UserName.Equals(userName) && item.ID != id) > 0)
            {
                return Json(-2, JsonRequestBehavior.AllowGet);
            }

            var user = db.Users.FirstOrDefault(item => item.ID == id);

            if (user == null)
            {
                return Json(-3, JsonRequestBehavior.AllowGet);
            }

            user.UserName = userName;
            user.FullName = fullName;
            user.Title = title;
            user.Image = image;
            user.Status = status;

            return Json(db.SaveChanges(), JsonRequestBehavior.AllowGet);
        }

        public JsonResult DeleteUser(int id, string fullName)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            var user = db.Users.FirstOrDefault(item => item.ID == id);

            if (user == null)
            {
                return Json(-2, JsonRequestBehavior.AllowGet);
            }

            user.IsDelete = true;

            return Json(db.SaveChanges(), JsonRequestBehavior.AllowGet);
        }

        public JsonResult DoChangePassword(string userName, string newPass)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            var user = db.Users.FirstOrDefault(item => item.UserName.ToLower().Equals(userName.ToLower()));

            if (user == null)
            {
                return Json(-2, JsonRequestBehavior.AllowGet);
            }

            user.Password = newPass;
            db.Entry(user).State = EntityState.Modified;

            return Json(db.SaveChanges(), JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetCustomers(int pageIndex, int recordPerPage)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            var output = new ObjectParameter("TotalRecord", typeof(int));
            //var items = db.CustomerGetLastest(pageIndex, recordPerPage, output).ToList();

            return Json(new { items = string.Empty, totalRecord = output.Value }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult AddCustomer(string name, string image, bool status, short orderNo, string website)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            if (db.Customers.Count(item => item.Name.Equals(name)) > 0)
            {
                return Json(-2, JsonRequestBehavior.AllowGet);
            }

            var customer = new Customer { ID = 1, Name = name, EnglishName = name, Image = image, Image2 = image, Website = website, Status = status, OrderNo = orderNo };

            db.Customers.Add(customer);

            return Json(db.SaveChanges(), JsonRequestBehavior.AllowGet);
        }

        public JsonResult UpdateCustomer(int id, string name, string image, bool status, short orderNo, string website)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            var customer = db.Customers.FirstOrDefault(item => item.ID == id);

            if (customer == null)
            {
                return Json(-3, JsonRequestBehavior.AllowGet);
            }

            customer.Name = name;
            customer.EnglishName = name;
            customer.OrderNo = orderNo;
            customer.Image = image;
            customer.Image2 = image;
            customer.Status = status;
            customer.Website = website;

            return Json(db.SaveChanges(), JsonRequestBehavior.AllowGet);
        }

        public JsonResult DeleteCustomer(int id, string name)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            var customer = db.Customers.FirstOrDefault(item => item.ID == id);

            if (customer == null)
            {
                return Json(-2, JsonRequestBehavior.AllowGet);
            }

            db.Customers.Remove(customer);

            return Json(db.SaveChanges(), JsonRequestBehavior.AllowGet);
        }

        public JsonResult SearchCustomerSay(short langId, int pageIndex, int recordPerPage)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            if (CurrentUser == null)
            {
                return Json(-2, JsonRequestBehavior.AllowGet);
            }

            var customerSays = db.CustomerSays.Where(m => m.LangId == langId);
            var items = customerSays.OrderBy(m => m.OrderNo).Skip((pageIndex - 1) * recordPerPage).Take(recordPerPage); ;

            return Json(new { items, totalRecord = customerSays.Count() }, JsonRequestBehavior.AllowGet);
        }

        [ValidateInput(false)]
        public JsonResult AddCustomerSay(string fullName, string title, string company, string content, short orderNo, string image, string langid)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            var customer = db.CustomerSays.FirstOrDefault(item => item.Title.Equals(title) && item.FullName.Equals(fullName) && item.Company.Equals(company));

            if (customer != null)
            {
                return Json(-2, JsonRequestBehavior.AllowGet);
            }

            customer = new CustomerSay();
            customer.FullName = fullName;
            customer.Title = title;
            customer.Title_En = title;
            customer.Image = image;
            customer.Company = company;
            customer.Company_En = company;
            customer.Content = content;
            customer.Content_En = content;
            customer.OrderNo = orderNo;
            customer.Image = image;
            customer.LangId = (Byte)Common.TransferLang(langid);

            db.CustomerSays.Add(customer);

            return Json(db.SaveChanges(), JsonRequestBehavior.AllowGet);
        }

        [ValidateInput(false)]
        public JsonResult UpdateCustomerSay(int id, string fullName, string title, string company, string content, short orderNo, string image, string langid)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            var customer = db.CustomerSays.FirstOrDefault(item => item.ID == id);

            if (customer == null)
            {
                return Json(-2, JsonRequestBehavior.AllowGet);
            }

            customer.FullName = fullName;
            customer.Title = title;
            customer.Title_En = title;
            customer.Image = image;
            customer.Company = company;
            customer.Company_En = company;
            customer.Content = content;
            customer.Content_En = content;
            customer.OrderNo = orderNo;
            customer.Image = image;
            customer.LangId = (Byte)Common.TransferLang(langid);

            return Json(db.SaveChanges(), JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult DeleteCustomerSay(int id)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            var customer = db.CustomerSays.FirstOrDefault(item => item.ID == id);

            if (customer == null)
            {
                return Json(-2, JsonRequestBehavior.AllowGet);
            }

            db.CustomerSays.Remove(customer);

            return Json(db.SaveChanges(), JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetDistrictByProvince(string province)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            return Json(db.Districts.Where(item => item.ProvinceSeoLink.Equals(province)).OrderBy(item => item.ID), JsonRequestBehavior.AllowGet);
        }

        public JsonResult SearchAgency(string key, string province, int pageIndex, int recordPerPage)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

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
            //var items = db.AgencyGetByNameAndProvinceAndDistrict(keyword, province, string.Empty, pageIndex, recordPerPage, output).ToList();
            var items = new List<Object>();


            return Json(new { items, totalRecord = output.Value }, JsonRequestBehavior.AllowGet);
        }

        [ValidateInput(false)]
        public JsonResult AddAgency(string name, string code, string address, string mobile, string email, string province, string provinceSeolink, string ditrict,
            string ditrictSeoLink, string image, string thumb, string introduce, int orderNo, byte level, byte status, double lang, double long1)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            if (db.Agencies.Count(item => item.Code.ToLower().Equals(code.ToLower()) && !item.Name.ToLower().Equals(name.ToLower())) > 0)
            {
                return Json(-2, JsonRequestBehavior.AllowGet);
            }

            if (db.Agencies.Count(item => item.Address.ToLower().Equals(address.ToLower()) && item.ProvinceSeolink.Equals(provinceSeolink) &&
                !item.Name.ToLower().Equals(name.ToLower())) > 0)
            {
                return Json(-3, JsonRequestBehavior.AllowGet);
            }

            if (db.Agencies.Count(item => item.Name.ToLower().Equals(name.ToLower()) &&
                item.Address.ToLower().Equals(address.ToLower()) && item.ProvinceSeolink.Equals(provinceSeolink)) > 0)
            {
                return Json(-4, JsonRequestBehavior.AllowGet);
            }

            var agency = new Agency
            {
                ID = 1,
                Name = name,
                UnsignName = Common.UCS2Convert(name),
                Code = code,
                SeoLink = Common.ConvertToUrlString(name),
                Address = address,
                Mobile = mobile,
                Email = email,
                Province = province,
                ProvinceSeolink = provinceSeolink,
                ViewNo = 0,
                CreateTime = DateTime.Now,
                District = ditrict,
                DistrictSeolink = ditrictSeoLink,
                Image = image,
                Thumb = thumb,
                Introduce = introduce,
                OrderNo = orderNo,
                Website = string.Empty,
                Level = level,
                Status = status,
                Lang = lang,
                Long = long1
            };

            db.Agencies.Add(agency);

            return Json(db.SaveChanges(), JsonRequestBehavior.AllowGet);
        }

        [ValidateInput(false)]
        public JsonResult UpdateAgency(int id, string name, string code, string address, string mobile, string email, string province, string provinceSeolink, string ditrict,
            string ditrictSeoLink, string image, string thumb, string introduce, int orderNo, byte level, byte status, double lang, double long1)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            var agency = db.Agencies.FirstOrDefault(item => item.ID == id);

            if (agency == null)
            {
                return Json(-2, JsonRequestBehavior.AllowGet);
            }

            if (db.Agencies.Count(item => item.Code.ToLower().Equals(code.ToLower()) && item.ID != id) > 0)
            {
                return Json(-3, JsonRequestBehavior.AllowGet);
            }

            if (db.Agencies.Count(item => item.Address.ToLower().Equals(address.ToLower()) && item.ProvinceSeolink.Equals(provinceSeolink) && item.ID != id) > 0)
            {
                return Json(-4, JsonRequestBehavior.AllowGet);
            }

            agency.Name = name;
            agency.UnsignName = Common.UCS2Convert(name);
            agency.Code = code;
            agency.SeoLink = Common.ConvertToUrlString(name);
            agency.Address = address;
            agency.Mobile = mobile;
            agency.Email = email;
            agency.Province = province;
            agency.ProvinceSeolink = provinceSeolink;
            agency.District = ditrict;
            agency.DistrictSeolink = ditrictSeoLink;
            agency.Image = image;
            agency.Thumb = thumb;
            agency.Introduce = introduce;
            agency.OrderNo = orderNo;
            agency.Level = level;
            agency.Status = status;
            agency.Lang = lang;
            agency.Long = long1;

            return Json(db.SaveChanges(), JsonRequestBehavior.AllowGet);
        }

        [ValidateInput(false)]
        public JsonResult DeleteAgency(int id, string name)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            var agency = db.Agencies.FirstOrDefault(item => item.ID == id);

            if (agency == null)
            {
                return Json(-2, JsonRequestBehavior.AllowGet);
            }

            db.Agencies.Remove(agency);

            return Json(db.SaveChanges(), JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetCateProduct(int langId, short parrentCateId)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            if (parrentCateId == 0)
            {
                return Json(db.CateProducts.Where(item => item.LangId == langId && !item.IsDelete).OrderBy(item => item.OrderNo).ToList(), JsonRequestBehavior.AllowGet);
            }

            return Json(db.CateProducts.Where(item => (parrentCateId == -1 || item.ParrentCateId == parrentCateId) && item.LangId == langId && !item.IsDelete).
                OrderBy(item => item.OrderNo).ToList(), JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        [ValidateInput(false)]
        public JsonResult AddCateProduct(CategoryProductViewModel item)
        {
            item.ParrentCateName = item.ParrentCateName ?? string.Empty;

            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            if (db.CateProducts.Count(m => m.Name.Equals(item.Name) && !m.IsDelete) > 0)
            {
                return Json(-2, JsonRequestBehavior.AllowGet);
            }

            var cate = new CateProduct
            {
                Name = item.Name,
                EnglishName = item.EnglishName,
                Description = item.Description,
                OrderNo = item.OrderNo,
                ParrentCateName = item.ParrentCateName,
                ParrentCateId = item.ParrentCateId,
                LangId = (Byte)Common.TransferLang(item.LangId),
                SeoLink = Common.ConvertToUrlString(item.Name)
            };

            db.CateProducts.Add(cate);

            if (item.ParrentCateId > 0)
            {
                var parrentCate = db.CateProducts.FirstOrDefault(m => m.ID == item.ParrentCateId);
                parrentCate.ChildCount += 1;
            }

            return Json(db.SaveChanges(), JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        [ValidateInput(false)]
        public JsonResult UpdateCateProduct(CategoryProductViewModel item)
        {
            item.ParrentCateName = item.ParrentCateName ?? string.Empty;

            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            var cateCurrent = db.CateProducts.Single(x => x.ID == item.ID);

            cateCurrent.Name = item.Name;
            cateCurrent.EnglishName = item.EnglishName;
            cateCurrent.Description = item.Description;
            cateCurrent.ParrentCateName = item.ParrentCateName;
            cateCurrent.OrderNo = item.OrderNo;
            cateCurrent.ParrentCateId = item.ParrentCateId;
            cateCurrent.LangId = (Byte)Common.TransferLang(item.LangId);

            return Json(db.SaveChanges(), JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult DeleteCateProduct(short id)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            var cate = db.CateProducts.FirstOrDefault(item => item.ID == id);

            if (cate == null)
            {
                return Json(-2, JsonRequestBehavior.AllowGet);
            }

            if (cate.ParrentCateId > 0)
            {
                var parrentCate = db.CateProducts.FirstOrDefault(item => item.ParrentCateId == cate.ParrentCateId);
                parrentCate.ChildCount -= 1;
            }

            db.CateProducts.Remove(cate);

            return Json(db.SaveChanges(), JsonRequestBehavior.AllowGet);
        }

        public JsonResult SearchIntroduce(short langId, string key, int pageIndex, int recordPerPage)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            var items = db.Introduces.Where(m => m.LangId == langId && (string.IsNullOrEmpty(key) || m.Title.Contains(key)));
            var result = items.OrderByDescending(m => m.ID).Skip((pageIndex - 1) * recordPerPage).Take(recordPerPage);

            return Json(new { items = result, totalRecord = items.Count() }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult DeleteIntroduce(int id)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            var introduce = db.Introduces.Find(id);

            if (introduce == null)
            {
                return Json(-2, JsonRequestBehavior.AllowGet);
            }

            db.Introduces.Remove(introduce);

            return Json(db.SaveChanges(), JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        [ValidateInput(false)]
        public JsonResult AddIntroduce(IntroduceViewModel item)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            var introduce = new Introduce()
            {
                Title = item.Title,
                SeoLink = Common.ConvertToUrlString(item.Title),
                Content = item.Title,
                LangId = 0,
                LastUpdateTime = DateTime.Now,
                LastUpdateUser = CurrentUser.FullName
            };

            db.Introduces.Add(introduce);

            return Json(db.SaveChanges(), JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        [ValidateInput(false)]
        public JsonResult UpdateIntroduce(IntroduceViewModel item)
        {
            if (CurrentUser == null)
            {
                return Json(-1, JsonRequestBehavior.AllowGet);
            }

            var introduce = db.Introduces.FirstOrDefault(m => m.ID == item.Id);

            if (introduce == null)
            {
                introduce = new Introduce();
            }

            introduce.Title = item.Title;
            introduce.Content = item.Content;
            introduce.Content_En = item.ContentEn;

            return Json(db.SaveChanges(), JsonRequestBehavior.AllowGet);
        }


        public ActionResult Solutions()
        {
            if (CurrentUser == null)
            {
                return new RedirectResult("/dang-nhap?u=" + Request.Url.PathAndQuery);
            }

            ViewBag.Context = HttpContext;
            ViewBag.CommonInfo = db.CommonInfoes.FirstOrDefault();
            ViewBag.CateNews = db.CateNews.Where(m => m.Type == 1).ToList();

            return View();
        }
    }
}