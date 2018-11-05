﻿using Autofac;
using Autofac.Integration.Wcf;
using SAS.TOOLS.WEB.USUARIOS.TEST.Util;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Web;



namespace SAS.TOOLS.WEB.USUARIOS.TEST.Modules
{
    public class ServiceModule<T> : Module//T objeto dinamico
    {
        public string BasicNameBinding { get; set; }

        //prop
        public ServiceModule(string basicNameBinding)
        {
            BasicNameBinding = basicNameBinding;
        }
        //ctor
        protected override void Load(ContainerBuilder builder)
        {
            var address = NameEndpointAddress.GetPair(typeof(T));

            builder.Register(c =>
            {
                var factory = new ChannelFactory<T>(
                    new BasicHttpBinding(BasicNameBinding),
                    new EndpointAddress(address.Value));
                return factory;
            })
            .SingleInstance();

            builder.Register(resolve => resolve.Resolve<ChannelFactory<T>>().CreateChannel())
                .As<T>()
                .UseWcfSafeRelease();

            base.Load(builder);
        }
    }
}






















