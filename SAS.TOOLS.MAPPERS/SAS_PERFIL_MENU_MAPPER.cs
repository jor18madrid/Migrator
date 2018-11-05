using SAS.TOOLS.DTO;
using SAS.TOOLS.DA;
using System.Collections.Generic;

namespace SAS.TOOLS.MAPPERS
{
    public static class SAS_PERFIL_MENU_MAPPER
    {


        public static SAS_PERFIL_MENU_DTO ToDto(this SAS_PERFIL_MENU Entity)
        {

            var dto = new SAS_PERFIL_MENU_DTO();

            dto.ID_PERFIL = Entity.ID_PERFIL;
            dto.ID_MENU = Entity.ID_MENU;
            dto.VIGENTE = Entity.VIGENTE;
            dto.API_ESTADO = Entity.API_ESTADO;
            dto.API_TRANSACCION = Entity.API_TRANSACCION;
            dto.USU_CRE = Entity.USU_CRE;
            dto.FEC_CRE = Entity.FEC_CRE;
            dto.USU_MOD = Entity.USU_MOD;
            dto.FEC_MOD = Entity.FEC_MOD;

        return dto;

  
         }

        public static List<SAS_PERFIL_MENU_DTO> ToDtoList(this List<SAS_PERFIL_MENU> ListEntity)
        {
            List<SAS_PERFIL_MENU_DTO> dtos = new List<SAS_PERFIL_MENU_DTO>();
            foreach (var item in ListEntity)
            {
                dtos.Add(item.ToDto());
            }
            return dtos;
        }


    }
}
