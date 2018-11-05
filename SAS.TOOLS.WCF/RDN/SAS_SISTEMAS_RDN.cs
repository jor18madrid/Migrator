using SAS.TOOLS.DTO;
using SAS.TOOLS.DA;
using SAS.TOOLS.MAPPERS;
using System.Collections.Generic;
using System.Linq;
using Oracle.ManagedDataAccess.Client;

namespace SAS.TOOLS.WCF.RDN
{
    public class SAS_SISTEMAS_RDN
    {
        public List<SAS_SISTEMAS_DTO> SAS_SISTEMAS_Listado()
        {
            List<SAS_SISTEMAS_DTO> lstSistemasDesc = new List<SAS_SISTEMAS_DTO>();
            using (var context = new Entities("DESARROLLO"))
            {
                    lstSistemasDesc = (from r in context.SAS_SISTEMAS select r).OrderBy(x => x.ID_SISTEMA).ToList().ToDtoList();
            }
            return lstSistemasDesc;
        }
    }
}



