using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace SAS.TOOLS.INTERFACES
{

    [ServiceContract(Namespace = "http://sas.tools.sefin.gob.hn")]
    public interface ISAS_GENERADOR_INTERFACE
    {
        [OperationContract]
        string qry_Generador(int ID_SISTEMA,int stmtOrExecute,string dbName);
    }
}
