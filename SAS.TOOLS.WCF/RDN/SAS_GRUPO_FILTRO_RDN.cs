using SAS.TOOLS.DA;
using SAS.TOOLS.DTO;
using SAS.TOOLS.MAPPERS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SAS.TOOLS.WCF.RDN
{
    public class SAS_GRUPO_FILTRO_RDN
    {
        public List<SAS_GRUPO_FILTRO_DTO> SAS_GRUPOS_Listado()
        {
            List<SAS_GRUPO_FILTRO_DTO> lstDescGrupo = new List<SAS_GRUPO_FILTRO_DTO>();
            using (var context = new Entities("DESARROLLO"))
            {
                lstDescGrupo = (from r in context.SAS_GRUPO_FILTRO select r).OrderBy(x => x.NOMBRE_GRUPO).ToList().ToDtoList();
            }
            return lstDescGrupo;
        }
    }
}