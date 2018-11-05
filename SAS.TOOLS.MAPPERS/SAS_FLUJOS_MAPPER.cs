using SAS.TOOLS.DA;
using SAS.TOOLS.DTO;
using System.Collections.Generic;

namespace SAS.TOOLS.MAPPERS
{
   public static class SAS_FLUJOS_MAPPER
    {

        public static SAS_FLUJOS_DTO ToDto(this SAS_FLUJOS Entity )
        {

            var dto = new SAS_FLUJOS_DTO();

            dto.ID_FLUJO = Entity.ID_FLUJO;
            dto.FLUJO = Entity.FLUJO;
            dto.ID_SISTEMA = Entity.ID_SISTEMA;
            dto.AREA = Entity.AREA;
            dto.APLICACION = Entity.APLICACION;
            dto.VIGENTE = Entity.VIGENTE;
            dto.API_ESTADO = Entity.API_ESTADO;
            dto.API_TRANSACCION = Entity.API_TRANSACCION;
            dto.USU_CRE = Entity.USU_CRE;
            dto.FEC_CRE = Entity.FEC_CRE;
            dto.USU_MOD = Entity.USU_MOD;
            dto.FEC_MOD = Entity.FEC_MOD;
            return dto;
        }

        public static List<SAS_FLUJOS_DTO> ToDtoList(this List<SAS_FLUJOS> ListEntity)
        {
            List<SAS_FLUJOS_DTO> dtos = new List<SAS_FLUJOS_DTO>();
            foreach (var item in ListEntity)
            {
                dtos.Add(item.ToDto());
            }
            return dtos;
        }





    }
}
