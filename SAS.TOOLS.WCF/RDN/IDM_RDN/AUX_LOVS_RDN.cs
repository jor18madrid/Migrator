using SAS.TOOLS.DA;
using SAS.TOOLS.DTO.IDM_DTO;
using SAS.TOOLS.MAPPERS.IDM_MAPPERS;
using System.Collections.Generic;
using System.Linq;



namespace SAS.TOOLS.WCF.RDN.IDM_RDN
{
    public class AUX_LOVS_RDN
    {

        public class API_LISTA_VALORES_RDN
        {
            public List<AUX_LOVS_DTO> AUX_LOVS_listado(string claVal)
            {
                List<AUX_LOVS_DTO> ltV_IDM_LOVGRAL = new List<AUX_LOVS_DTO>();

                using (var context = new IDM_Entities())
                {
                    IQueryable<V_IDM_LOVGRAL> query;

                    query = context.V_IDM_LOVGRAL.Where(x => x.CLASIFICADOR == claVal);
                    
                    foreach (var item in query)
                    {
                        ltV_IDM_LOVGRAL.Add(item.ToLovDto());
                    }
                }
                return /*ltV_IDM_LOVGRAL;*/ ltV_IDM_LOVGRAL;
           }
            
        }
    }
}