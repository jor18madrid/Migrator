using SAS.TOOLS.DA;
using SAS.TOOLS.DTO;
using System.Collections.Generic;

namespace SAS.TOOLS.MAPPERS
{
    public static class SAS_GRUPO_FILTRO_MAPPER
    {

        public static SAS_GRUPO_FILTRO_DTO ToDto(this SAS_GRUPO_FILTRO Entity)
        {

            var dto = new SAS_GRUPO_FILTRO_DTO();
            dto.ID_GRUPO = Entity.ID_GRUPO;
            dto.ID_SISTEMA = Entity.ID_SISTEMA;
            dto.NOMBRE_GRUPO = Entity.NOMBRE_GRUPO;
            dto.DESC_GRUPO = Entity.DESC_GRUPO;
            dto.VIGENTE = Entity.VIGENTE;
            dto.API_ESTADO = Entity.API_ESTADO;
            dto.API_TRANSACCION = Entity.API_TRANSACCION;
            dto.USU_CRE = Entity.USU_CRE;
            dto.FEC_CRE = Entity.FEC_CRE;
            dto.USU_MOD = Entity.USU_MOD;
            dto.FEC_MOD = Entity.FEC_MOD;
            return dto;
        }

        public static List<SAS_GRUPO_FILTRO_DTO> ToDtoList(this List<SAS_GRUPO_FILTRO> ListEntity)
        {
            List<SAS_GRUPO_FILTRO_DTO> dtos = new List<SAS_GRUPO_FILTRO_DTO>();
            foreach (var item in ListEntity)
            {
                dtos.Add(item.ToDto());
            }
            return dtos;
        }




    }
}
