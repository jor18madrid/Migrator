using SAS.TOOLS.DA;
using SAS.TOOLS.DTO.IDM_DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SAS.TOOLS.MAPPERS.IDM_MAPPERS
{
    public static class AUX_LOVS_MAPPERS
    {
        public static AUX_LOVS_DTO ToLovDto( this V_IDM_LOVGRAL entity)
        {
            AUX_LOVS_DTO dto = new AUX_LOVS_DTO();
            
            dto.PK = entity.PK;
            dto.LLAVE = entity.LLAVE;
            dto.CODIGO = entity.CODIGO;
            dto.DESCRIPCION = entity.DESCRIPCION;
            dto.ESTADO = entity.ESTADO;
            dto.CLASIFICADOR = entity.CLASIFICADOR;
            
            return dto;
        }


        public static List<AUX_LOVS_DTO> ToDtoList(this List<V_IDM_LOVGRAL> ListEntity)
        {
            List<AUX_LOVS_DTO> dtos = new List<AUX_LOVS_DTO>();
            foreach (var item in ListEntity)
            {
                dtos.Add(item.ToLovDto());
            }
            return dtos;
        }





    }

}
