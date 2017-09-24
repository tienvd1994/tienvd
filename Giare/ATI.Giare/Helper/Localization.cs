using ATI.Web.Controllers;
using ATI.Web.Models;
using System;
using System.Linq;
using System.Globalization;
using System.Threading;
using System.Web;
using System.Web.Mvc;

namespace ATI.Web.Helper
{
    public class Localization : ActionFilterAttribute
    {
        public Entities db = new Entities();

        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            string cultureName;
            // Attempt to read the culture cookie from Request
            HttpCookie cultureCookie = filterContext.HttpContext.Request.Cookies["_culture"];
            if (cultureCookie != null)
                cultureName = cultureCookie.Value;
            else
                cultureName = CultureHelper.GetDefaultCulture(); // obtain it from config
            //cultureName = Request.UserLanguages[0]; // obtain it from HTTP header AcceptLanguages

            // Validate culture name
            //cultureName = CultureHelper.GetImplementedCulture(cultureName); // This is safe

            // Modify current thread's cultures
            //System.Threading.Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo(cultureName);
            //System.Threading.Thread.CurrentThread.CurrentUICulture = System.Threading.Thread.CurrentThread.CurrentCulture;
            Thread.CurrentThread.CurrentUICulture = CultureInfo.CreateSpecificCulture(cultureName);

            //Không check cookie lưu tài khoản
            //if (!CheckCookie)
            //{
            //    base.OnActionExecuting(filterContext);
            //    return;
            //}

            //Check login
            var currentUser = filterContext.HttpContext.Session["User"] == null ? null : (BriefUser)filterContext.HttpContext.Session["User"];

            if (currentUser == null)
            {
                var code = filterContext.HttpContext.Request.Cookies["_code"];
                var pwd = filterContext.HttpContext.Request.Cookies["_emm"];

                if (code != null && pwd != null)
                {
                    var userName = HttpUtility.UrlDecode(code.Value);

                    var user = db.Users.FirstOrDefault(item => item.UserName.ToLower().Equals(userName.ToLower()));

                    var pass = HttpUtility.UrlDecode(pwd.Value);
                    try
                    {
                        if (!Common.ATIDecrypt(pass).Equals(Common.MD5Endcoding(user.Password).ToLower()))
                        {
                            base.OnActionExecuting(filterContext);
                            return;
                        }

                        currentUser = new BriefUser
                        {
                            Id = user.ID,
                            UserName = user.UserName,
                            FullName = user.FullName,
                            Image = user.Image
                        };

                        filterContext.HttpContext.Session["User"] = currentUser;
                    }
                    catch (Exception)
                    {
                        filterContext.HttpContext.Session["User"] = null;
                    }
                }
            }

            filterContext.Controller.ViewBag.CurrentUser = currentUser;

            base.OnActionExecuting(filterContext);
        }
    }
}