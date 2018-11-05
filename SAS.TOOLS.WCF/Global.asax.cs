using Autofac;
using Autofac.Integration.Wcf;
using System.Linq;
using System.Reflection;

namespace SAS.TOOLS.WCF
{
    public class MvcApplication : System.Web.HttpApplication
    {

    protected void Application_Start()
    {
            //AreaRegistration.RegisterAllAreas();
            //RouteConfig.RegisterRoutes(RouteTable.Routes);
            var builder = new ContainerBuilder();
            var assembly = Assembly.GetExecutingAssembly();
            builder.RegisterAssemblyTypes(assembly).Where(a => a.Namespace.EndsWith("RDN"));
            builder.RegisterAssemblyTypes(assembly).Where(a => a.Namespace.EndsWith("IDM_RDN"));
            builder.RegisterAssemblyTypes(assembly).Where(a => a.Namespace.EndsWith("SVC"));
            builder.RegisterAssemblyTypes(assembly).Where(a => a.Namespace.EndsWith("IDM_SVC"));
            AutofacHostFactory.Container = builder.Build();
        }
    }
}
