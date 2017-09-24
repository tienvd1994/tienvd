using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ATI.Web.Startup))]
namespace ATI.Web
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
