﻿

using Autofac;
using Autofac.Integration.Mvc;
using System.Web.Mvc;
using SAS.TOOLS.WEB.Modules;

namespace SAS.TOOLS.WEB.App_Start
{
    public class AutofacConfig
    {
        public static void RegisterConfig()
        {

            var builder = new ContainerBuilder();

            //Se registran los Controladores 
            builder.RegisterControllers(typeof(MvcApplication).Assembly);

            builder.RegisterModule(new ServiceModule<INTERFACES.ISAS_ACCIONES_INTERFACE>("BasicHttpBinding_SasTools"));
            builder.RegisterModule(new ServiceModule<INTERFACES.ISAS_SISTEMAS_INTERFACE>("BasicHttpBinding_SasTools"));
            builder.RegisterModule(new ServiceModule<INTERFACES.ISAS_MACRO_INTERFACE>("BasicHttpBinding_SasTools"));
            //    builder.RegisterModule(new ServiceModule<INTERFACES.ISAS_Origen_Destino_INTERFACE>("BasicHttpBinding_SasTools"));

            //         builder.RegisterModule(new ServiceModule<INTERFACES.ITGR1_RECIBO_DETALLES_INTERFACE>("BasicHttpBinding_SasTools"));//nuevo
            //opcional
            //OpcionalRegister(builter)

            var container = builder.Build();
            DependencyResolver.SetResolver(new AutofacDependencyResolver(container));

        }
        public static void OpcionalRegister(ContainerBuilder builder)
        {

            // OPTIONAL: Register model binders that require DI.
            builder.RegisterModelBinders(typeof(MvcApplication).Assembly);
            builder.RegisterModelBinderProvider();

            // OPTIONAL: Register web abstractions like HttpContextBase.
            builder.RegisterModule<AutofacWebTypesModule>();

            // OPTIONAL: Enable property injection in view pages.
            builder.RegisterSource(new ViewRegistrationSource());

            // OPTIONAL: Enable property injection into action filters.
            builder.RegisterFilterProvider();


        }

    }
}




















