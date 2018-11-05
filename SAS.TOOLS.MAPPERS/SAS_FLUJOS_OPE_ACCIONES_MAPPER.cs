using SAS.TOOLS.DTO;
using SAS.TOOLS.DA;
using System.Collections.Generic;

namespace SAS.TOOLS.MAPPERS
{
    public static class SAS_FLUJOS_OPE_ACCIONES_MAPPER
    {

        public static SAS_FLUJOS_OPE_ACCIONES_DTO ToDto(this SAS_FLUJOS_OPE_ACCIONES Entity)
        {
            var dto = new SAS_FLUJOS_OPE_ACCIONES_DTO();


            dto.ID_ACCION = Entity.ID_ACCION ;
            dto.ID_OPERACION = Entity.ID_OPERACION ;
            dto.VIGENTE = Entity.VIGENTE;
            dto.API_ESTADO = Entity.API_ESTADO ;
            dto.API_TRANSACCION = Entity.API_TRANSACCION ;
            dto.USU_CRE = Entity.USU_CRE;
            dto.FEC_CRE = Entity.FEC_CRE;
            dto.USU_MOD = Entity.USU_MOD;
            dto.FEC_MOD = Entity.FEC_MOD;
            
            return dto;
        }



        public static List<SAS_FLUJOS_OPE_ACCIONES_DTO> ToDtoList(this List<SAS_FLUJOS_OPE_ACCIONES> ListEntity)
        {
            List<SAS_FLUJOS_OPE_ACCIONES_DTO> dtos = new List<SAS_FLUJOS_OPE_ACCIONES_DTO>();
            foreach (var item in ListEntity)
            {
                dtos.Add(item.ToDto());
            }
            return dtos;
        }



    }
}
