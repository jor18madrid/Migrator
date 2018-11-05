using SAS.TOOLS.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace SAS.TOOLS.INTERFACES
{
   

        [ServiceContract(Namespace = "http://sas.tools.sefin.gob.hn")]

        public interface ISAS_MACRO_INTERFACE
        {


            [OperationContract]
            SAS_MACRO_DTO qry_SAS_MACRO_Filtrado(string pa_Macro);

        [OperationContract]
        List<SAS_MACRO_DTO> qry_SAS_MACRO_Listado();




    }




}
