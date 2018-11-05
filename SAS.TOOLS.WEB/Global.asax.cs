using SAS.TOOLS.WEB.App_Start;
using System.Web.Mvc;
using System.Web.Routing;


namespace SAS.TOOLS.WEB
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            AutofacConfig.RegisterConfig();

        }
    }
}
