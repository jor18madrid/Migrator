using SAS.TOOLS.DA;
using SAS.TOOLS.DTO;
using SAS.TOOLS.MAPPERS;
using SAS.TOOLS.WCF.Util;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SAS.TOOLS.WCF.RDN
{
    public class SAS_PERFIL_FLUJO_OPE_RDN
    {
        
        public List<SAS_PERFIL_FLUJO_OPE_DTO> SAS_PERFIL_FLUJO_OPE_Filtrado_IDPERFIL_X_Sistema(int ID_SISTEMA,string dName)
        {

            List<SAS_PERFIL_FLUJO_OPE_DTO> lst = new List<SAS_PERFIL_FLUJO_OPE_DTO>();

            using (var context = new Entities(dName))
            {

                 lst = (from spfo in context.SAS_PERFIL_FLUJO_OPE
                       join sp in context.SAS_PERFILES on spfo.ID_PERFIL equals sp.ID_PERFIL
                       where sp.ID_SISTEMA == ID_SISTEMA
                       select spfo).ToList().ToDtoList();
            }
            return lst;
        }




    }
}