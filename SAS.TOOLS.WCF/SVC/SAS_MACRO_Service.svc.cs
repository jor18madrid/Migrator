using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using SAS.TOOLS.DTO;
using SAS.TOOLS.INTERFACES;
using SAS.TOOLS.WCF.RDN;


namespace SAS.TOOLS.WCF.SVC
{
    public class SAS_MACRO_Service : ISAS_MACRO_INTERFACE
    {
        public SAS_MACRO_DTO qry_SAS_MACRO_Filtrado(string pa_Macro)
        {
            return new SAS_MACRO().SAS_MACRO_Filtro(pa_Macro: pa_Macro);
        }

        public List<SAS_MACRO_DTO> qry_SAS_MACRO_Listado()
        {

            return new SAS_MACRO().SAS_MACRO_Listado();

        }
    }
}
