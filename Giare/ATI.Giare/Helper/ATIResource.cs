using System.Globalization;
using System.Resources;
using System.Threading;

namespace ATI.Web.Helper
{
    public class ATIResourceManger
    {
        public static ResourceManager _managerResources = new ResourceManager("ATI.Web.Resource.ATIResource", typeof(MvcApplication).Assembly);
        public static CultureInfo _culture = CultureInfo.CreateSpecificCulture("vi-VN");

        public static void SetLanguage(string Name = "vi-VN")
        {
            _culture = CultureInfo.CreateSpecificCulture(Name);
            Thread.CurrentThread.CurrentCulture = _culture;
            Thread.CurrentThread.CurrentUICulture = _culture;
            Resource.ATIResource.Culture = _culture;

        }

        public static string GetLanguageCurrent()
        {
            var resourceType = ATICurrentSession.GetLang;

            switch (resourceType)
            {
                case 0:
                    return "vi";
                case 1:
                    return "en";
                default:
                    return "vi";
            }
        }
    }
}