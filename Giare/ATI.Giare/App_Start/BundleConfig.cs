using System.Web;
using System.Web.Optimization;

namespace ATI.Web
{
    public class BundleConfig
    {
        // For more information on bundling, visit http://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryui").Include(
                        "~/Scripts/jquery-ui-{version}.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.unobtrusive*",
                        "~/Scripts/jquery.validate*"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at http://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/Scripts/js").Include("~/Scripts/bootstrap/jquery.sequence-min.js",
                "~/Scripts/bootstrap/back-to-top.js", "~/Scripts/bootstrap/bootstrap.js", "~/Scripts/bootstrap/hover-dropdown.js"));

            bundles.Add(new ScriptBundle("~/Scripts/knockout-contact").Include("~/Scripts/knockout-2.2.0.js", "~/Scripts/contact.js"));

            bundles.Add(new ScriptBundle("~/Scripts/js/v1").Include(
                "~/scripts/v.1/jquery.appear.js", "~/scripts/v.1/jquery.easing.js", "~/scripts/v.1/bootstrap.min.js", "~/scripts/v.1/jquery.validate.js",
                "~/scripts/v.1/jquery.stellar.js", "~/scripts/v.1/jquery.knob.js", "~/scripts/v.1/jquery.gmap.js", "~/scripts/v.1/jquery.isotope.js",
                "~/scripts/v.1/jflickrfeed.js",
                "~/scripts/v.1/theme.plugins.js", "~/scripts/v.1/theme.js"));

            bundles.Add(new ScriptBundle("~/Scripts/layout").Include(
                "~/Scripts/jquery-1.8.2.min.js",
                "~/Scripts/bootstrap.min.js",
                "~/Scripts/revolution-slider/revolution.min.js",
                "~/Scripts/jquery.fancybox.pack.js",
                "~/Scripts/jquery.fancybox-media.js",
                "~/Scripts/jquery.validate.min.js",
                "~/Scripts/jquery.validate.unobtrusive.min.js",
                "~/Scripts/owl.js",
                "~/Scripts/slick.js",
                "~/Scripts/wow.js",
                "~/Scripts/appear.js",
                "~/Scripts/isotope.js",
                "~/Scripts/script.js"
                ));

            bundles.Add(new StyleBundle("~/Content/css/layout").Include(
                "~/Content/bootstrap.min.css",
                "~/Content/revolution-slider/revolution-slider.css",
                "~/Content/style.css",
                "~/Content/slick.css",
                "~/Content/owl.css",
                "~/Content/font-awesome.min.css",
                "~/Content/jquery.fancybox.css",
                "~/Content/hover.css",
                "~/Content/flaticon.css",
                "~/Content/animate.css",
                "~/Content/jquery.bootstrap-touchspin.css",
                "~/Content/jquery-ui.css"
                ));

            bundles.Add(new StyleBundle("~/Content/css").Include("" +
                "~/Content/bootstrap.css",
                "~/Content/app.css",
                "~/Content/style.css",
                "~/Content/header1.css",
                "~/Content/responsive.css",
                "~/Content/font-awesome/font-awesome.css", "~/Content/flexslider.css", "~/Content/jquery.css", "~/Content/horizontal-parallax.css",
                "~/Content/page_promo.css", "~/Content/red.css", "~/Content/header1-red.css", "~/Content/kpi.css", "~/Content/page_search.css"));
        }
    }
}
