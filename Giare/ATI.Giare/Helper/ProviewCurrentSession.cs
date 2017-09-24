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
                if (!string.IsNullOrEmpty(ATICurrentCookie.GetCookie(LANG_SESSION)))
                    return  Convert.ToInt32(ATICurrentCookie.GetCookie(LANG_SESSION));
                return 0;
            }

            set { GetLang = value; }

        }
    }

    public class ATICurrentCookie
    {
        public static void AddCookie(Object pValue, string pKey)
        {
            var cookieTemp = new HttpCookie(pKey);

            cookieTemp.Value = pValue.ToString();
          
            HttpContext.Current.Response.Cookies.Set(cookieTemp);
        }

        public static string GetCookie(string pKey)
        {
            if (HttpContext.Current.Request.Cookies[pKey] != null)
                return HttpContext.Current.Request.Cookies[pKey].Value;
            return "0";
        }

    }
}