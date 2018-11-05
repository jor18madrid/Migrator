using SAS.TOOLS.DA;
using SAS.TOOLS.DTO;
using SAS.TOOLS.MAPPERS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SAS.TOOLS.WCF.RDN
{
    public class SAS_PERFILES_RDN
    {

        public List<SAS_PERFILES_DTO> SAS_PERFILES_Listado()
        {
            List<SAS_PERFILES_DTO> lstSistemasDesc = new List<SAS_PERFILES_DTO>();
            using (var context = new Entities("DESARROLLO"))
            {
              lstSistemasDesc = (from r in context.SAS_PERFILES select r).OrderBy(x => x.NOMBRE_PERFIL).ToList().ToDtoList();   
            }
            return lstSistemasDesc;
        }


    }
}