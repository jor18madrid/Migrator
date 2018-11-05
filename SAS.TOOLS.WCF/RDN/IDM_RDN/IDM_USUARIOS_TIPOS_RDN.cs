using SAS.TOOLS.DA;
using SAS.TOOLS.DTO.IDM_DTO;
using SAS.TOOLS.MAPPERS.IDM_MAPPERS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SAS.TOOLS.WCF.RDN.IDM_RDN
{
    public class IDM_USUARIOS_TIPOS_RDN
    {
        public List<IDM_USUARIOS_TIPOS_DTO> SAS_GRUPOS_Listado()
        {
            List<IDM_USUARIOS_TIPOS_DTO> lstDescGrupo = new List<IDM_USUARIOS_TIPOS_DTO>();
            using (var context = new IDM_Entities())
            {
                lstDescGrupo = (from r in context.IDM_USUARIOS_TIPOS select r).OrderBy(x => x.TIPO_USUARIO_ID).ToList().ToDtoList();
            }
            return lstDescGrupo;
        }
    }
}