


using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.ServiceModel.Configuration;
using System.Text;
using System.Web;
using System.Web.Mvc;

namespace SAS.TOOLS.WEB.USUARIOS.TEST.Util
{
    public class NameEndpointAddress
    {
        public static KeyValuePair<string, string> GetPair(Type serviceContractType)
        {
            var configException = new ConfigurationErrorsException(string.Format("No se encontro ningun endpoint {0}. Agregue la seccion <client><endpoint name=\"myservice\" address=\"anonimus\" binding=\"basicHttpBinding\" contract=\"{0}\"/></client> en el archivo de configuracion.", serviceContractType));
            ClientSection _clientSection = ConfigurationManager.GetSection("system.serviceModel/client") as ClientSection;

            if (((_clientSection == null) || (_clientSection.Endpoints == null)) || (_clientSection.Endpoints.Count < 1))
            {
                throw configException;
            }
            foreach (ChannelEndpointElement element in _clientSection.Endpoints)
            {
                if (element.Contract == serviceContractType.ToString())
                {
                    return new KeyValuePair<string, string>(element.Name, element.Address.AbsoluteUri);
                }
            }
            throw configException;
        }

    }





}




















