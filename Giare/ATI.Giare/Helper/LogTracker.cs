using System;
using System.Web.Mvc;

namespace ATI.Web.Helper
{
    public class LogTracker : ActionFilterAttribute
    {
        //public ProductEntities db;

        public override void OnActionExecuting(ActionExecutingContext context)
        {
            base.OnActionExecuting(context);

            //db.Trackers.Add(new Tracker
            //    {
            //        Browser = context.HttpContext.Request.Browser.Browser,
            //        ID = 1,
            //        InTime = DateTime.Now,
            //        IP = Common.ClientIP,
            //        OS = context.HttpContext.Request.Browser.Platform,
            //        OutTime = null,
            //        PageUrl = context.HttpContext.Request.CurrentExecutionFilePath,
            //        SessionID = context.HttpContext.Session == null ? string.Empty : context.HttpContext.Session.SessionID,
            //        UrlReferrer = Common.UrlReferrer(),
            //        Version = context.HttpContext.Request.Browser.MajorVersion.ToString()
            //    });

            //db.SaveChanges();
        }
    }
}