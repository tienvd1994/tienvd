using System;
using System.Web.Mvc;
using System.Web.Routing;
using ATI.Web.Resource;
using ATI.Web.Helper;
namespace ATI.Web
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            //ATIResourceManger.SetLanguage("vi");

            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
              name: "Home-Blog1",
              url: "blog",
              defaults: new { controller = "Home", action = "News", seoLink = "tin-su-kien" }
          );

            routes.MapRoute(
              name: "Home-Product",
              url: "san-pham/{seoLink}/{page}",
              defaults: new { controller = "Home", action = "Product", page = UrlParameter.Optional }
          );

            routes.MapRoute(
              name: "CMS-CateProduct",
              url: "cms/nhom-du-an",
              defaults: new { controller = "CMS", action = "CateProduct" }
          );

            routes.MapRoute(
              name: "Home-AgencyDetail-1",
              url: "a/{seolink}",
              defaults: new { controller = "Home", action = "AgencyDetail" }
          );

            routes.MapRoute(
              name: "CMS-Agency",
              url: "cms/dai-ly",
              defaults: new { controller = "CMS", action = "Agency" }
          );

            routes.MapRoute(
              name: "CMS-CustomerSay",
              url: "cms/customer",
              defaults: new { controller = "CMS", action = "CustomerSay" }
          );

            routes.MapRoute(
               name: "CMS-Help",
               url: "tro-giup",
               defaults: new { controller = "CMS", action = "Help" }
           );

            routes.MapRoute(
               name: "Home-Logout",
               url: "thoat",
               defaults: new { controller = "Home", action = "Logout" }
           );

            routes.MapRoute(
               name: "CMS-CMS",
               url: "cms",
               defaults: new { controller = "CMS", action = "CMS" }
           );

            routes.MapRoute(
               name: "Home-Login",
               url: "dang-nhap",
               defaults: new { controller = "Home", action = "Login" }
           );

            routes.MapRoute(
               name: "CMS-Customer",
               url: "cms/khach-hang-tieu-bieu",
               defaults: new { controller = "CMS", action = "Customer" }
           );

            routes.MapRoute(
               name: "CMS-ChangePassword",
               url: "cms/doi-mat-khau",
               defaults: new { controller = "CMS", action = "ChangePassword" }
           );

            routes.MapRoute(
               name: "CMS-UserManger",
               url: "cms/nguoi-dung",
               defaults: new { controller = "CMS", action = "UserManger" }
           );

            routes.MapRoute(
               name: "CMS-Contact",
               url: "cms/lien-he",
               defaults: new { controller = "CMS", action = "Contact" }
           );

            routes.MapRoute(
               name: "CMS-Tracker",
               url: "cms/truy-cap",
               defaults: new { controller = "CMS", action = "Tracker" }
           );

            routes.MapRoute(
               name: "CMS-news",
               url: "cms/tin-tuc",
               defaults: new { controller = "CMS", action = "News" }
           );

            // routes.MapRoute(
            //    name: "CMS-Project",
            //    url: "cms/du-an",
            //    defaults: new { controller = "CMS", action = "Project" }
            //);

            routes.MapRoute(
               name: "CMS-Service",
               url: "cms/dich-vu",
               defaults: new { controller = "CMS", action = "Service" }
           );

            routes.MapRoute(
               name: "CMS-Product",
               url: "cms/du-an",
               defaults: new { controller = "CMS", action = "Product" }
           );

            routes.MapRoute(
               name: "CMS-Introduce",
               url: "cms/gioi-thieu",
               defaults: new { controller = "CMS", action = "Introduce" }
           );

            routes.MapRoute(
               name: "CMS-CommonInfo",
               url: "cms/thong-tin-chung",
               defaults: new { controller = "CMS", action = "CommonInfo" }
           );

            routes.MapRoute(
               name: "Home-SearchProduct",
               url: "tim-san-pham/{key}",
               defaults: new { controller = "Home", action = "SearchProduct", key = UrlParameter.Optional }
           );

            routes.MapRoute(
               name: "Home-NewsDetail",
               url: "bai-viet/{seolink}",
               defaults: new { controller = "Home", action = "NewsDetail" }
           );

            routes.MapRoute(
               name: "Home-NewsDetail-tuyen-dung",
               url: "tuyen-dung/{seolink}",
               defaults: new { controller = "Home", action = "NewsDetail" }
           );

            routes.MapRoute(
               name: "Home-SearchNews",
               url: "tim-bai-viet",
               defaults: new { controller = "Home", action = "SearchNews" }
           );

            routes.MapRoute(
               name: "Home-tuyendung",
               url: "tuyen-dung",
               defaults: new { controller = "Home", action = "News", seoLink = "tuyen-dung" }
           );

            routes.MapRoute(
               name: "Home-SolutionDetail",
               url: "giai-phap-chi-tiet/{seolink}",
               defaults: new { controller = "Home", action = "SolutionDetail" }
           );

            routes.MapRoute(
               name: "Home-Solutions",
               url: "giai-phap/{seolink}/{page}",
               defaults: new { controller = "Home", action = "Solutions", page = UrlParameter.Optional }
           );

            routes.MapRoute(
               name: "Home-News",
               url: "tin-tuc/{seolink}/{page}",
               defaults: new { controller = "Home", action = "News", page = UrlParameter.Optional }
           );

            routes.MapRoute(
               name: "Home-ProjectDetail",
               url: "nha-thau/{seolink}",
               defaults: new { controller = "Home", action = "ProjectDetail" }
           );

            // routes.MapRoute(
            //    name: "Home-Project",
            //    url: "nha-thau",
            //    defaults: new { controller = "Home", action = "Project" }
            //);

            routes.MapRoute(
               name: "Home-Service",
               url: "dich-vu/{page}",
               defaults: new { controller = "Home", action = "Service", page = UrlParameter.Optional }
           );

            routes.MapRoute(
               name: "Home-ServiceDetail",
               url: "chi-tiet-dich-vu/{seolink}",
               defaults: new { controller = "Home", action = "ServiceDetail" }
           );

            routes.MapRoute(
               name: "Home-ProductDetail",
               url: "chi-tiet/{seolink}",
               defaults: new { controller = "Home", action = "ProductDetail" }
           );

            routes.MapRoute(
               name: "Home-Project",
               url: "du-an",
               defaults: new { controller = "Home", action = "Project" }
           );

            routes.MapRoute(
               name: "Home-Contact",
               url: "lien-he",
               defaults: new { controller = "Home", action = "Contact" }
           );

            routes.MapRoute(
               name: "Home-ShoppingCart",
               url: "gio-hang",
               defaults: new { controller = "Home", action = "ShoppingCart" }
           );

            routes.MapRoute(
               name: "Home-Tags",
               url: "tags/du-an/{seoLink}",
               defaults: new { controller = "Home", action = "Tags" }
           );

            routes.MapRoute(
               name: "Home-AgencyPolicy",
               url: "dai-ly/chinh-sach",
               defaults: new { controller = "Home", action = "AgencyPolicy" }
           );

            routes.MapRoute(
               name: "Home-RegisAgency",
               url: "dai-ly/dang-ki",
               defaults: new { controller = "Home", action = "RegisAgency" }
           );

            routes.MapRoute(
               name: "Home-AgencyDetail",
               url: "dai-ly-sunsoil/{seoLink}",
               defaults: new { controller = "Home", action = "AgencyDetail" }
           );

            routes.MapRoute(
               name: "Home-Agency-district",
               url: "dai-ly-tai/{district}/{province}",
               defaults: new { controller = "Home", action = "AgencyDistrict" }
           );

            routes.MapRoute(
               name: "Home-Agency-province",
               url: "dai-ly-tai/{province}",
               defaults: new { controller = "Home", action = "Agency" }
           );

            routes.MapRoute(
               name: "Home-Agency",
               url: "dai-ly",
               defaults: new { controller = "Home", action = "Agency", province = "" }
           );

            routes.MapRoute(
               name: "Home-FAQ",
               url: "hoi-dap",
               defaults: new { controller = "Home", action = "FAQ" }
           );

            routes.MapRoute(
               name: "Home-About-Company",
               url: "gioi-thieu",
               defaults: new { controller = "Home", action = "About", seolink = "ve-cong-ty" }
           );

            routes.MapRoute(
               name: "Home-Blog",
               url: "blog",
               defaults: new { controller = "Home", action = "News", seolink = "tin-moi" }
           );

            routes.MapRoute(
               name: "Home-About",
               url: "gioi-thieu/{seolink}",
               defaults: new { controller = "Home", action = "About" }
           );

            routes.MapRoute(
               name: "Home-Product-Detail",
               url: "{seolink}",
               defaults: new { controller = "Home", action = "ProductDetail" }
           );

            routes.MapRoute(
                name: "Introduction English",
                url: "Introduction/{seolink}",
                defaults: new { Controller = "Home", action = "About", seolink = "about-us" }

               );

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );


        }
    }
}
