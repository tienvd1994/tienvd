using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Resources;
using System.Threading;
using System.Web;

namespace ATI.Web.Helper
{
    public class ATIResourceManger
    {
        public static ResourceManager _managerResources = new ResourceManager("ATI.Web.Resource.ATIResource", typeof(ATI.Web.MvcApplication).Assembly);

        public static CultureInfo _culture = CultureInfo.CurrentCulture;

        public static void SetLanguage(string Name)
        {
            _culture = CultureInfo.CreateSpecificCulture(Name);

            Thread.CurrentThread.CurrentCulture = _culture;
            Thread.CurrentThread.CurrentUICulture = _culture;

            Resource.ATIResource.Culture = _culture;
            
        }

        public static string GetLanguageCurrent()
        {
            var resourceType = ATICurrentSession.GetLang;
         
            switch(resourceType)
            { 
                case 0:
                    return "vi";
                case 1:
                    return "ko";
                default:
                    return "vi";
            }

            return "vi";
        }
    }
}