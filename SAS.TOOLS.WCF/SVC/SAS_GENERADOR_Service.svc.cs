using SAS.TOOLS.DA;
using SAS.TOOLS.INTERFACES;
using SAS.TOOLS.REPOSITORY;
using SAS.TOOLS.REPOSITORY.GenericContext;
using SAS.TOOLS.REPOSITORY.UnitOfWork;
using SAS.TOOLS.WCF.RDN;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Web.Configuration;

namespace SAS.TOOLS.WCF.SVC
{
    public class SAS_GENERADOR_Service : ISAS_GENERADOR_INTERFACE
    {
        public string qry_Generador(int idSistema, int stmtOrExecute,string dbName)
        {
            return new SAS_GENERADOR().Generador(idSistema: idSistema, dbName:dbName);
        }
    }
}
