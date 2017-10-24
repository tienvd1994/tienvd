using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ATI.Web.Helper
{
    /// <summary>
    /// <Author>HoangDX</Author>
    /// <Date>Aug 26 2015</Date>
    /// <Description>Checking language change</Description>
    /// </summary>
    public class ATICurrentSession
    {
        private const string LANG_SESSION = "ATILang";

        public static void AddSession(Object pValue, string pKeyValue)
        {
            HttpContext.Current.Session[pKeyValue] = pValue;
        }

        public static Object GetSession(string pKeyValue)
        {
            if (HttpContext.Current.Session[pKeyValue] != null)
                return HttpContext.Current.Session[pKeyValue];
            return null;
        }

        public static void SetLang(int pLangId)
        {
            ATICurrentCookie.AddCookie(pLangId.ToString(), LANG_SESSION);
        }

        public static int GetLang
        {
            get
            {
                var lang = ATICurrentCookie.GetCookie("_culture");

                if (!string.IsNullOrEmpty(lang))
                    return Convert.ToInt32(lang);

                return 0;
            }

            set { GetLang = value; }

        }
    }

    public class ATICurrentCookie
    {
        public static void AddCookie(Object pValue, string pKey)
        {
            var cookieTemp = new HttpCookie(pKey)
            {
                Value = pValue.ToString()
            };

            HttpContext.Current.Response.Cookies.Set(cookieTemp);
        }

        public static string GetCookie(string pKey)
        {
            var culture = HttpContext.Current.Request.Cookies[pKey];

            if (culture != null)
                return culture.Value.Equals("vi-VN") ? "0" : "1";
            return "0";
        }

    }
}